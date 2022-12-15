package com.kjmachine.company.domain;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class MachineDTO {

	private int machNo; 
	private String mfg;
	private String price;
	private String mach_name;
	private String condit;
	private String located;
	private Date rgsDate;
	private String rgs;
	private String manufacture;
	private String specification;
	private String content;
	private String dealArea;
	private String delivery;
    private int cateNo;
    private String sum;
    
    private List<MachineAttachDTO> attachList;
}
