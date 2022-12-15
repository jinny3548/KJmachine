package com.kjmachine.company;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kjmachine.company.domain.BoardDTO;
import com.kjmachine.company.mapper.IBoardMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class BoardMapperTest {

	
	@Autowired
	private IBoardMapper mapper;
	
	@Test
	public void test() {
		log.info("test....");
	}

	@Test
	public void insert( ) {
		BoardDTO dto = new BoardDTO();
		dto.setName("김은진");
		dto.setEmail("dmswls3548");
		dto.setContent("테스트입니다.");
		mapper.insert(dto);
		log.info(dto);
	}
	
}
