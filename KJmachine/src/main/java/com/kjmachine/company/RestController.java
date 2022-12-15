package com.kjmachine.company;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.kjmachine.company.domain.CateDTO;
import com.kjmachine.company.domain.Criteria;
import com.kjmachine.company.domain.MachineAttachDTO;
import com.kjmachine.company.domain.MachineDTO;
import com.kjmachine.company.domain.NoticeDTO;
import com.kjmachine.company.domain.machineBoardDTO;
import com.kjmachine.company.mapper.ICateMapper;
import com.kjmachine.company.mapper.IMachineAttachMapper;
import com.kjmachine.company.mapper.IMachineBoardMapper;
import com.kjmachine.company.mapper.IMapper;
import com.kjmachine.company.mapper.INoticeMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@org.springframework.web.bind.annotation.RestController
@AllArgsConstructor
@Log4j
public class RestController {

	
	@Autowired
	private IMapper mapper;
	
	@Autowired
	private INoticeMapper nomapper;
	
	@Autowired
	private ICateMapper catemap;
	
	@Autowired 
	private IMachineAttachMapper attachMapper;
	
	@Autowired
	private IMachineBoardMapper mbMapper;
	
	 @GetMapping(value = "/KJmachine/{machNo}",
		   	   produces = {MediaType.APPLICATION_XML_VALUE,
			   	   			  MediaType.APPLICATION_JSON_UTF8_VALUE})
	 public ResponseEntity<List<MachineDTO>> getList(@PathVariable("machNo") int machNo) {
		 List<MachineDTO> list = mapper.getList(machNo);
		 for (MachineDTO machineDTO : list) {
			 SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
			 String strNowDate = simpleDateFormat.format(machineDTO.getRgsDate());
			 machineDTO.setRgs(strNowDate);
		}
	    return new ResponseEntity<List<MachineDTO>>(list, HttpStatus.OK);
	 }
	 
	 @GetMapping(value = "/KJmachine/attach/{machNo}",
		   	   produces = {MediaType.APPLICATION_XML_VALUE,
			   	   			  MediaType.APPLICATION_JSON_UTF8_VALUE})
	 public ResponseEntity<List<MachineAttachDTO>> attach(@PathVariable("machNo") int machNo) {
		 
		 List<MachineAttachDTO> list = attachMapper.findByMachNo(machNo);
		 
	    return new ResponseEntity<List<MachineAttachDTO>>(list, HttpStatus.OK);
	 }
	 
	 @GetMapping(value = "/KJmachine/cateNo/{cateNo}",
		   	   produces = {MediaType.APPLICATION_XML_VALUE,
			   	   			  MediaType.APPLICATION_JSON_UTF8_VALUE})
	 public ResponseEntity<CateDTO> cateNo(@PathVariable("cateNo") int cateNo) {
		 
		 catemap.show(cateNo);
	    return new ResponseEntity<CateDTO>(catemap.show(cateNo), HttpStatus.OK);
	 }
	 
	 @GetMapping(value = "/KJmachine/notice/{noticeNo}",
		   	   produces = {MediaType.APPLICATION_XML_VALUE,
			   	   			  MediaType.APPLICATION_JSON_UTF8_VALUE})
	 public ResponseEntity<List<NoticeDTO>> getNoList(@PathVariable("noticeNo") int noticeNo) {
	    
	    return new ResponseEntity<List<NoticeDTO>>(nomapper.getNoList(noticeNo), HttpStatus.OK);
	 }
	 
	 @GetMapping(value = "/KJmachine/page/{num}",
		   	   produces = {MediaType.APPLICATION_XML_VALUE,
			   	   			  MediaType.APPLICATION_JSON_UTF8_VALUE})
	 public ResponseEntity<List<machineBoardDTO>> getPage(@PathVariable("num") int num) {
		 Criteria cri = new Criteria();
		 cri.setAmount(5);
		 cri.setPageNum(num);
		 List<machineBoardDTO> list = mbMapper.getListWithPaging(cri);
		 for (machineBoardDTO machineBoardDTO : list) {
			 SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd"); 
			 String strNowDate = simpleDateFormat.format(machineBoardDTO.getUpdatedate());
			 machineBoardDTO.setDate(strNowDate);
		}
	    return new ResponseEntity<List<machineBoardDTO>>(list, HttpStatus.OK);
	 }
	 
//	 @GetMapping(value = "/delete/{machNo}",
//			 	 produces = {MediaType.APPLICATION_XML_VALUE,
//		   	   			  MediaType.APPLICATION_JSON_UTF8_VALUE})
//		public ResponseEntity<Integer> delete(@PathVariable("machNo") int machNo) {
//			
//			return new ResponseEntity<Integer>(mapper.delete(machNo), HttpStatus.OK);
//		}
	
}
