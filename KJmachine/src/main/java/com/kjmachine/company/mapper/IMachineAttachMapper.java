package com.kjmachine.company.mapper;

import java.util.List;

import com.kjmachine.company.domain.MachineAttachDTO;

public interface IMachineAttachMapper {

	public void insert(MachineAttachDTO dto);
	public void delete(String uuid);
	public void deleteAll(int machNo);
	public List<MachineAttachDTO> findByMachNo(int machNo);
	public String sum(int machNo);
}
