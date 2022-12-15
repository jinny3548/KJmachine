package com.kjmachine.company;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.kjmachine.company.domain.AdminDTO;
import com.kjmachine.company.mapper.IAdminMapper;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class AdminMapperTest {
	
	@Autowired
	private IAdminMapper mapper;
	
	@Test
	public void test() {
		log.info("test...........");
	}
	
	@Test
	public void login() throws Exception{
		
		AdminDTO dto = new AdminDTO();
		dto.setId("dmswls3548");
		dto.setPwd("kimsim80!");
		
		dto = mapper.login(dto);
		
		log.info("·Î±×ÀÎ..." + dto.toString());
	}

}
