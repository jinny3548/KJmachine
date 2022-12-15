package com.kjmachine.company.domain;

import java.util.Date;

import lombok.Data;

@Data
public class machineBoardDTO {

	private int mbno;
	private String sub;
	private String cont;
	private String email;
	private String pwd;
	private String date;
	private Date rfg;
	private Date updatedate;
	
	public Criteria cri;
}
