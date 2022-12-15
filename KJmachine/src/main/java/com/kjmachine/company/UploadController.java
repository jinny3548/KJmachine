package com.kjmachine.company;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kjmachine.company.domain.BoardDTO;
import com.kjmachine.company.domain.FileAttachDTO;
import com.kjmachine.company.domain.MachineAttachDTO;
import com.kjmachine.company.domain.MachineDTO;
import com.kjmachine.company.mapper.IMachineAttachMapper;
import com.kjmachine.company.mapper.IMapper;

import lombok.extern.log4j.Log4j;
import net.coobird.thumbnailator.Thumbnails;

@Controller
@Log4j
public class UploadController {

	private static final String uploadPath = "D:\\workspace\\KJmachine\\src\\main\\webapp\\resources\\upload";
	
	@Autowired
	private IMapper mapper;
	
	@Autowired
	private IMachineAttachMapper attatchMapper;
	
	
	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String link() {
		return "board";
	}
	
//	@RequestMapping(value = "/upload", method = RequestMethod.POST)
//	public String upload(MultipartFile[] uploadFile, Model model, MachineDTO dto, RedirectAttributes rttr )throws Exception {
//		for (MultipartFile multipartFile : uploadFile) {
//			log.info("================================");
//			log.info("Upload Filename--->" + multipartFile.getOriginalFilename());
//			log.info("Upload Size--->" + multipartFile.getSize());
//			log.info("Upload ContentType--->" + multipartFile.getContentType());
//			
//			File saveFile = new File(uploadPath, multipartFile.getOriginalFilename());
//			dto.setMachNo(dto.getMachNo());
//			dto.setImage(multipartFile.getOriginalFilename());
//			int no = dto.getMachNo();
//			mapper.insert(dto);
//			log.info("........................." + dto.getMachNo());
//			rttr.addFlashAttribute("no", dto.getMachNo());
//			try {
//				multipartFile.transferTo(saveFile);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
//		return "redirect:/KJmachine";
//	}
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String upload(MultipartFile uploadFile, MachineDTO dto, Model model, RedirectAttributes rttr)throws Exception {

//		String path = attach.getUploadPath();
//		String upload = path.replace("\\", "/");
//		dto.setFileName(upload + "/" + attach.getUuid() +"_" + attach.getFileName());

		log.info("upload................................");
		if (dto.getAttachList() == null || dto.getAttachList().size() <= 0) {
		         return "";
		      }
		log.info("µî·Ï.................................sum" + dto.getSum());
		String sum = URLDecoder.decode(dto.getSum());
		dto.setSum(sum);
		mapper.insert(dto);
		rttr.addFlashAttribute("no", dto.getMachNo());
			dto.getAttachList().forEach(attach -> {
				log.info("-----------------------"+ attach);
					attach.setMachNo(dto.getMachNo());
					log.info("attachgetMachNo........................" + attach.getMachNo());
					String path = attach.getUploadPath().replace("\\", "/");
					attach.setUploadPath(path);
					String name = "_" + attach.getFileName();
					attach.setFileName(name);
					attatchMapper.insert(attach);
					//model.addAttribute("sumNo", attach.getMachNo());
					log.info("attachfindByMachNo........................" + attatchMapper.findByMachNo(attach.getMachNo()));
					model.addAttribute("list", attatchMapper.findByMachNo(attach.getMachNo()));
//					if (attach.getFileName() == attach.getSum()) {
//				}
		      });
			
			log.info("........................." + dto.getMachNo());
			log.info("attachList ======> " + dto.getAttachList());
			
		return "redirect:/KJmachine";
	}
	
	@GetMapping("/display")
	@ResponseBody
	public ResponseEntity<byte[]> getFile(String fileName) {
		log.info("fileName == " + fileName);
		
		File file = new File(uploadPath + "\\" + fileName);
		log.info("file == " + file);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
					
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	/*
	 * public String upload(@RequestParam("uploadFile")MultipartFile file, Model
	 * model) throws Exception{
	 * 
	 * String fileName = file.getOriginalFilename();
	 * 
	 * if(!file.getOriginalFilename().isEmpty()) { file.transferTo(new
	 * File(uploadPath, fileName)); model.addAttribute("msg",
	 * "File uploaded successfully."); model.addAttribute("fileName", fileName);
	 * }else { model.addAttribute("msg", "Please select a valid mediaFile.."); }
	 * 
	 * return "board"; }
	 */
	
	
	
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		String str = sdf.format(date);
		
		return str.replace("-", File.separator);
	}
	
	private boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());
			
			return contentType.startsWith("image");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	@PostMapping(value =  "/uploadAjaxAction",
			 produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<FileAttachDTO>> uploadAjaxPost(MultipartFile[] uploadFile, MachineAttachDTO dto, MachineDTO machDto){
		log.info("update ajax post...........................");
		List<FileAttachDTO> attachList = new ArrayList<FileAttachDTO>();
		
		String uploadFolderPath = getFolder();
		machDto.getMachNo();
		File uploadFolder = new File(uploadPath, getFolder());
		
		log.info("uploadFolder................" + uploadFolder);
		
		if (uploadFolder.exists() == false) {
			uploadFolder.mkdirs();
		}
		
		for (MultipartFile multipartFile : uploadFile) {
			log.info("-----------------------------------------");
			log.info("Upload Filename--->" + multipartFile.getOriginalFilename());
			log.info("Upload Size--->" + multipartFile.getSize());
			log.info("Upload ContentType--->" + multipartFile.getContentType());
			
			FileAttachDTO attachFileDTO = new FileAttachDTO();
			String uploadFileName = multipartFile.getOriginalFilename();
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") + 1);
			log.info("only file name : " + uploadFileName);
			
			attachFileDTO.setFileName(uploadFileName);
			
			UUID uuid = UUID.randomUUID();
			
			uploadFileName = uuid.toString() + "_" + uploadFileName;
			
			try {
				File saveFile = new File(uploadFolder, uploadFileName);
				multipartFile.transferTo(saveFile);
				
				attachFileDTO.setUuid(uuid.toString());
				attachFileDTO.setUploadPath(uploadFolderPath);
				
				if (checkImageType(saveFile)) {
					attachFileDTO.setImage(true);
					
					File thumbnail = new File(uploadFolder, "s_" + uploadFileName);
					Thumbnails.of(saveFile).size(100, 100).toFile(thumbnail);
					
				}
				attachList.add(attachFileDTO);
			} catch (Exception e) {
				log.error(e.getMessage());
				e.printStackTrace();
			}
		}
		return new ResponseEntity<List<FileAttachDTO>> (attachList, HttpStatus.OK);
	}
	
	@PostMapping("/deleteFile")
	@ResponseBody
	public ResponseEntity<String> deleteFile(String fileName, String type){
		log.info("deleteFile == " + fileName);
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html;charset=UTF-8");
		
		try {
			File file = new File(uploadPath + "\\" + URLDecoder.decode(fileName, "UTF-8"));
			
			file.delete();
			
			if (type.equals("image")) {
				String largeFileName = file.getAbsolutePath().replace("s_", "");
				log.info("largeFileName == " + largeFileName);
				
				file = new File(largeFileName);
				file.delete();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<String>("delete", headers, HttpStatus.OK);
	}
	
	@PostMapping("/sumdeleteFile")
	@ResponseBody
	public ResponseEntity<String> sumdeleteFile(String fileName, String type, String uuid){
		log.info("deleteFile == " + fileName);
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-Type", "text/html;charset=UTF-8");
		
		try {
			File file = new File(uploadPath + "\\" + URLDecoder.decode(fileName, "UTF-8"));
			
			file.delete();
			
			if (type.equals("image")) {
				String largeFileName = file.getAbsolutePath().replace("s_", "");
				attatchMapper.delete(uuid);
				
				log.info("largeFileName == " + largeFileName);
				file = new File(largeFileName);
				file.delete();
			}
		} catch (Exception e) {
			e.printStackTrace();
			return new ResponseEntity<String>(HttpStatus.NOT_FOUND);
		}
		return new ResponseEntity<String>("delete sum", headers, HttpStatus.OK);
	}
	
}
