package com.kjmachine.company.domain;

import java.util.Date;
import java.util.Iterator;

import lombok.Data;

@Data
public class BoardDTO {

	private int boardNo;
	private String name;
	private String email;
	private String content;
	private Date rgs;
}
