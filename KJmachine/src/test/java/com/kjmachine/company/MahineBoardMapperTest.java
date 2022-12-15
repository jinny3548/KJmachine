package com.kjmachine.company;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kjmachine.company.domain.Criteria;
import com.kjmachine.company.domain.machineBoardDTO;
import com.kjmachine.company.mapper.IMachineBoardMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MahineBoardMapperTest {

	@Autowired
	private IMachineBoardMapper mapper;

	@Test
	public void test() {
		log.info("test..........");
	}

//	@Test
//	public void insert() {
//		machineBoardDTO dto = new machineBoardDTO();
//		dto.setSub("회사방문");
//		dto.setCont("화사방문을 하고 싶습니다");
//		dto.setEmail("jimin33");
//		dto.setPwd("1234");
//		mapper.insert(dto);
//		log.info(dto);
//	}

//	@Test
//	public void list() {
//		mapper.list(new Criteria(1, 5)).forEach(board -> log.info("list............" + board));
//	}

//	@Test
//	public void mbnoList() {
//		log.info(mapper.mbnoList(3));
//	}

//	@Test
//	public void countBoard() {
//		log.info("countBoard..........." + mapper.countBoard());
//	}

	@Test
	public void getListWithPaging() {

		// int realEnd; endPage 계산 // realEnd = (int) (Math.ceil((80 * 1.0) / 10));
		// System.out.println("realEnd = ...... " + realEnd);

		Criteria cri = new Criteria(); // 1페이지 4개

		cri.setPageNum(1);
		cri.setAmount(4);

		List<machineBoardDTO> list = mapper.getListWithPaging(cri);
		list.forEach(board -> log.info(board.getMbno()));

		log.info("getListWithPaging..........." + mapper.getListWithPaging(cri));
	}

//	@Test
//	public void list() {
//		Criteria cri = new Criteria();
//		cri.setAmount(5);
//		cri.setPageNum(1);
//		log.info("........................" + mapper.list(cri));
//	}
}
