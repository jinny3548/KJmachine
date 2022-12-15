package com.kjmachine.company;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kjmachine.company.domain.BoardDTO;
import com.kjmachine.company.domain.NoticeDTO;
import com.kjmachine.company.mapper.IBoardMapper;
import com.kjmachine.company.mapper.INoticeMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class NoticeMapperTest {

	@Autowired
	private INoticeMapper mapper;
	
	@Test
	public void test() {
		log.info("test.............................");
	}
	
//	@Test
//	public void insert() {
//		NoticeDTO dto = new NoticeDTO();
//		dto.setSubject("안녕하세요요");
//		dto.setContent("안녕하세요!!!!");
//		mapper.insert(dto);
//		log.info(dto);
//	}
	
//	@Test
//	public void showList() {
//		log.info(mapper.showList());
//	}
	
//	@Test
//	public void getNoList() {
//		log.info(mapper.getNoList(1));
//	}
	
//	@Test
//	public void list() {
//		log.info(mapper.list(1));
//	}

//	@Test
//	public void delete() {
//		mapper.delete(3);
//	}

	
	@Test
	public void countNotice() {
		log.info("countNotice..........." + mapper.countNotice());
	}
}
