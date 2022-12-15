package com.kjmachine.company.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kjmachine.company.domain.MachineDTO;

public interface IMapper {

	public void insert(MachineDTO dto);
	public List<MachineDTO> getList(int machNo);
	public MachineDTO List(int machNo);
	public int all();
	public int cnc();
	public int mct();
	public List<MachineDTO> allList();
	public List<MachineDTO> mctList();
	public List<MachineDTO> cncList();
	public void delete(int machNo);
	public void update(MachineDTO dto);
	public void sum(@Param("machNo") int machNo, @Param("sum") String sum) throws Exception;
}
