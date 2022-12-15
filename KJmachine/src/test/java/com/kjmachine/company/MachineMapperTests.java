package com.kjmachine.company;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kjmachine.company.domain.MachineDTO;
import com.kjmachine.company.mapper.IMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MachineMapperTests {
						
	@Autowired
	private IMapper mapper;
	
//	@Test
//	public void test() {
//		log.info("test..........................");
//	}
	
//	@Test
//	public void insert() {
//		log.info("insert................");
//		
//		MachineDTO dto = new MachineDTO();
//		dto.setCateNo(2);
//		dto.setCondit("��ȣ");
//		dto.setContent("12��ġ");
//		dto.setDealArea("����");
//		dto.setDelivery("������");
//		dto.setImage("machine3.jpg");
//		dto.setLocated("����");
//		dto.setMach_name("CNC����");
//		dto.setManufacture("��������");
//		dto.setMfg("2019-12-22");
//		dto.setPrice("���ǰ���");
//		
//		mapper.insert(dto);
//	}
	
//	@Test
//	public void getList() {
//		mapper.getList(1);
//		log.info("=========================================");
//		log.info("getList............" + mapper.getList(1));
//	}
	
//	@Test
//	public void newList() {
//		log.info("newList..................................." + mapper.newList());
//	}
//	
//	@Test
//	public void bestList() {
//		log.info("bestList..................................." + mapper.bestList());
//	}

	/*
	 * @Test public void delete() { mapper.delete(42); }
	 */
	
//	@Test
//	public void allList() {
//		log.info("allList..................................." + mapper.allList());
//	}
	
	@Test
	public void all() {
		log.info("all..................................." + mapper.all());
	}
}




