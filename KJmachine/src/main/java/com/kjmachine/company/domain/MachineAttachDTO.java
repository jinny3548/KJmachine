package com.kjmachine.company.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class MachineAttachDTO {

	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean filetype;
	
	
	private int machNo;
}
