package com.kjmachine.company.domain;

import lombok.Data;

@Data
public class Criteria {

	private int pageNum;
	private int amount;
	
	public Criteria() {
		
		//this.pageNum = 1; this.amount = 5;
		 
		this(1, 5);
}
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
}