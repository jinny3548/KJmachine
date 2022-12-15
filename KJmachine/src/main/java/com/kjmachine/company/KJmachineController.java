package com.kjmachine.company;

import java.io.File;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kjmachine.company.domain.AdminDTO;
import com.kjmachine.company.domain.BoardDTO;
import com.kjmachine.company.domain.Criteria;
import com.kjmachine.company.domain.MachineAttachDTO;
import com.kjmachine.company.domain.MachineDTO;
import com.kjmachine.company.domain.NoticeDTO;
import com.kjmachine.company.domain.PageDTO;
import com.kjmachine.company.domain.machineBoardDTO;
import com.kjmachine.company.mapper.IAdminMapper;
import com.kjmachine.company.mapper.IBoardMapper;
import com.kjmachine.company.mapper.IMachineAttachMapper;
import com.kjmachine.company.mapper.IMachineBoardMapper;
import com.kjmachine.company.mapper.IMapper;
import com.kjmachine.company.mapper.INoticeMapper;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class KJmachineController {

	private static final Logger logger = LoggerFactory.getLogger(KJmachineController.class);

	private static final String uploadPath = "D:\\workspace\\KJmachine\\src\\main\\webapp\\resources\\upload";

	@Autowired
	private IMapper mapper;

	@Autowired
	private INoticeMapper nomapper;

	@Autowired
	private IBoardMapper bomapper;

	@Autowired
	private IMachineAttachMapper attahmapper;

	@Autowired
	private IAdminMapper adminmapper;
	
	@Autowired
	private IMachineBoardMapper mbMapper;

	@RequestMapping("/register")
	public String register() throws Exception {

		return "register";
	}

	@RequestMapping("/KJmachine")
	public String get(Model model, MachineDTO dto, HttpServletRequest req, AdminDTO adminDto) throws Exception {

		model.addAttribute("allList", mapper.allList());
		model.addAttribute("all", mapper.all());
		model.addAttribute("cncAll", mapper.cnc());
		model.addAttribute("mctAll", mapper.mct());
		model.addAttribute("cnc", mapper.cncList());
		model.addAttribute("mct", mapper.mctList());
		

		return "index";
	}

	@RequestMapping("/KJ")
	public String KJmachineAdmmin(Model model, MachineDTO dto, Criteria cri) throws Exception {

		model.addAttribute("notice", nomapper.showList());
		model.addAttribute("cnc", mapper.cncList());
		model.addAttribute("mct", mapper.mctList());
		model.addAttribute("countNotice", nomapper.countNotice());
		//List<machineBoardDTO> list = mbMapper.list(cri);
		List<machineBoardDTO> list = mbMapper.getListWithPaging(cri);
		for (machineBoardDTO machineBoardDTO : list) {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
			String strNowDate = simpleDateFormat.format(machineBoardDTO.getRfg());
			machineBoardDTO.setDate(strNowDate);
			
			model.addAttribute("board", list);
			model.addAttribute("pageMaker", new PageDTO(cri, mbMapper.countBoard()));
		}
		
		model.addAttribute("count", mbMapper.countBoard());
		
		
		return "kjmachine";
	}

	
//	@GetMapping(value = "/list")
//	public void list(Criteria cri, Model model) {
//		
//		log.info("list....." + cri);
//		model.addAttribute("list", mbMapper.list(cri));
//		model.addAttribute("pageMaker", new PageDTO(cri, 123));
//	}
	
	@RequestMapping("/machineForm")
	public String insertForm() throws Exception {

		return "machineForm";
	}

	@RequestMapping("/delete")
	public String delete(RedirectAttributes rttr, @RequestParam("machNo") int machNo) {

		MachineDTO dto = mapper.List(machNo);
		List<MachineAttachDTO> attach = attahmapper.findByMachNo(machNo);
		attach.forEach(attachList -> {
			String fileName = (attachList.getUploadPath() + "\\s_" + attachList.getUuid() + attachList.getFileName());
			File file = new File(uploadPath + "\\" + fileName);
			file.delete();
			String bFile = file.getAbsolutePath().replace("s_", "");
			file = new File(bFile);
			file.delete();
			log.info(attachList.getUploadPath() + "\\" + attachList.getUuid() + attachList.getFileName());
		});

		attahmapper.deleteAll(machNo);
		mapper.delete(machNo);
		rttr.addFlashAttribute("machNo", machNo);
		return "redirect:/KJmachine";
	}

	@PostMapping("/machineList")
	public String insert(RedirectAttributes rttr, MachineDTO dto) throws Exception {

		logger.info("insert............................." + dto.toString());
		dto.setMachNo(dto.getMachNo());
		int no = dto.getMachNo();

		mapper.insert(dto);
		logger.info("........................." + dto.getMachNo());

		rttr.addFlashAttribute("no", dto.getMachNo());

		return "redirect:/KJmachine";
	}

	@RequestMapping("/noticeForm")
	public String noticeForm() {
		return "noticeForm";
	}
	
	@RequestMapping("/notice")
	public String notice() {
		return "notice";
	}

	@RequestMapping("/login")
	public String login(Model model, AdminDTO dto, RedirectAttributes rttr, HttpServletRequest req) throws Exception {
		
		HttpSession session = req.getSession();
		AdminDTO admin = adminmapper.login(dto);
		
		if (admin == null) {
			session.setAttribute("admin", null);
			rttr.addFlashAttribute("loginmsg", "로그인에 실패하였습니다. 아이디와 비밀번호를 확인해주세요.");
			
		}else {
			session.setAttribute("admin", admin);
			rttr.addFlashAttribute("name", admin.getName());
			model.addAttribute("id", admin.getId());
		}
		
		return "redirect:/KJmachine";
	}
	
	@RequestMapping("/logout")
	public String logout(RedirectAttributes rttr, HttpServletRequest req) throws Exception {
		
		HttpSession session = req.getSession();
		
			session.setAttribute("admin", null);
			rttr.addFlashAttribute("logoutmsg", "로그아웃되었습니다.");
		
		return "redirect:/KJmachine";
	}
	
	@RequestMapping("/machineBoard")
	public String machineBoard(RedirectAttributes rttr, Model model, machineBoardDTO dto) throws Exception {
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		String str = sdf.format(date);
		
		mbMapper.insert(dto);
		rttr.addFlashAttribute("mb", "문의글이 등록되었습니다.");
		return "redirect:/KJ";
	}
	
	@RequestMapping("/boardShow")
	public String boardShow(Model model, @RequestParam("mbno") int mbno) throws Exception {
		
		machineBoardDTO dto = mbMapper.mbnoList(mbno);
		
		model.addAttribute("mnboList", dto);
		
		return "boardShow";
	}
	
	@RequestMapping("/adminBoardShow")
	public String adminBoardShow(Model model, @RequestParam("mbno") int mbno) throws Exception {
		
		machineBoardDTO dto = mbMapper.mbnoList(mbno);
		
		model.addAttribute("mnboList", dto);
		
		return "adminBoardShow";
	}
	
	@RequestMapping("/mypage")
	public String MyPage(Model model, @RequestParam("id") String id) throws Exception {
		
		model.addAttribute("id", id);
		
		return "myPage";
	}
	
	@RequestMapping("/adminNotice")
	public String adminNotice(RedirectAttributes rttr, HttpServletRequest req, AdminDTO dto, Model model) throws Exception {
		
		HttpSession session = req.getSession();
		
		model.addAttribute("notice", nomapper.showList());
		session.setAttribute("admin", dto);
		rttr.addFlashAttribute("", "");
		
		return "adminNotice";
	}
	
	@RequestMapping("/adminBoard")
	public String adminBoard(RedirectAttributes rttr, HttpServletRequest req, AdminDTO dto, Model model, Criteria cri) throws Exception {
		
		HttpSession session = req.getSession();
		
		model.addAttribute("notice", nomapper.showList());
		session.setAttribute("admin", dto);
		rttr.addFlashAttribute("", "");
		
		List<machineBoardDTO> list = mbMapper.list(cri);
		for (machineBoardDTO machineBoardDTO : list) {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
			String strNowDate = simpleDateFormat.format(machineBoardDTO.getRfg());
			machineBoardDTO.setDate(strNowDate);
			
			model.addAttribute("board", list);
		}
		
		return "adminBoard";
	}


	@RequestMapping("/noticeAdd")
	public String noticeAdd(RedirectAttributes rttr, NoticeDTO dto) {

		nomapper.insert(dto);
		log.info(dto.getNoticeNo() + "번 글이 등록 돼");
		rttr.addFlashAttribute("noticeAdd", dto.getNoticeNo());
		return "redirect:/KJmachine";
	}

	@RequestMapping("/updateForm")
	public String updateForm(Model model, @RequestParam("machNo") int machNo) throws Exception {

		log.info("update machNo ===== " + machNo);
		model.addAttribute("updateView", mapper.List(machNo));
		log.info("findByMachNo....................." + attahmapper.findByMachNo(machNo));
		model.addAttribute("attachView", attahmapper.findByMachNo(machNo));

		return "updateForm";
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(RedirectAttributes rttr, MachineDTO dto, MultipartFile[] file) throws Exception {

		log.info("getsum................." + dto.getSum());
		String sum = URLDecoder.decode(dto.getSum());
		log.info("setsum.........................." + sum);
		dto.setSum(sum);
		mapper.update(dto);
		log.info("getAttachList............" + dto);
		rttr.addFlashAttribute("updateNo", dto.getMachNo());

		if (dto.getAttachList() != null) {
			dto.getAttachList().forEach(attach -> {
				attach.setMachNo(dto.getMachNo());
				log.info("attachgetMachNo........................" + attach.getMachNo());
				String path = attach.getUploadPath().replace("\\", "/");
				attach.setUploadPath(path);
				String name = "_" + attach.getFileName();
				attach.setFileName(name);
				attahmapper.insert(attach);
				log.info("attachfindByMachNo........................" + attahmapper.findByMachNo(attach.getMachNo()));
			});
		}

		return "redirect:/KJmachine";
	}

	@RequestMapping("/noticeModForm")
	public String noticeModForm(Model model, @RequestParam("noticeNo") int noticeNo) throws Exception {

		log.info("noticeNo ===== " + noticeNo);
		log.info("noticeModForm ===== " + nomapper.list(noticeNo));
		model.addAttribute("noticeView", nomapper.list(noticeNo));

		return "noticeModForm";
	}

	@RequestMapping("/noticeMod")
	public String noticeMod(RedirectAttributes rttr, NoticeDTO dto) {

		log.info("noticeMod...............");
		rttr.addFlashAttribute("noticeModNo", dto.getNoticeNo());
		nomapper.noticeMod(dto);

		return "redirect:/KJmachine";
	}

	@RequestMapping("/noticeDelete")
	public String noticeDelete(RedirectAttributes rttr, @RequestParam("noticeNo") int noticeNo) {

		log.info("noticeDelete...............");
		rttr.addFlashAttribute("noticeNo", noticeNo);
		nomapper.noticeDelete(noticeNo);

		return "redirect:/KJmachine";
	}

	@PostMapping("/board")
	public String board(RedirectAttributes rttr, BoardDTO dto) throws Exception {

		logger.info("insert............................." + dto.toString());

		bomapper.insert(dto);

		rttr.addFlashAttribute("name", dto.getName());
		rttr.addFlashAttribute("email", dto.getEmail());
		rttr.addFlashAttribute("content", dto.getContent());

		return "redirect:/KJ";
	}
	
	@RequestMapping(value = "/passBoard", method = RequestMethod.POST)
	public String passBoard(RedirectAttributes rttr, machineBoardDTO dto) throws Exception {

		logger.info("passBoard............................." + dto.toString());

		machineBoardDTO mdto = mbMapper.pass(dto);
		
		if (mdto == null) {
			 rttr.addFlashAttribute("no", "불일치");
			 rttr.addAttribute("mbno", dto.getMbno());
		}else {
			int mbno = mdto.getMbno();
			String pass = mdto.getPwd();
			if (pass == mdto.getPwd()) {
				rttr.addFlashAttribute("yes", "일치");
				rttr.addAttribute("mbno", mdto.getMbno());
			}
		}
		
		return "redirect:/boardShow";
	}

}
