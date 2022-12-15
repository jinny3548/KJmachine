package com.kjmachine.company.domain;

import lombok.Data;

@Data
public class FileAttachDTO {

	private String fileName;
	private String uploadPath;
	private String uuid;
	private boolean image;
}
