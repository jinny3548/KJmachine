package com.kjmachine.company.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class AdminDTO {
	
	private String id;
	private String pwd;
	private String name;
	private String email;

}
