package com.kjmachine.company.mapper;

import java.util.List;

import com.kjmachine.company.domain.Criteria;
import com.kjmachine.company.domain.machineBoardDTO;

public interface IMachineBoardMapper {

	public void insert(machineBoardDTO dto);
	//public List<machineBoardDTO> list();
	public List<machineBoardDTO> list(Criteria cri);
	public machineBoardDTO mbnoList(int mbno);
	public int countBoard();
	public machineBoardDTO pass(machineBoardDTO dto) throws Exception;
	public List<machineBoardDTO> getListWithPaging(Criteria cri);
	public Integer insertSelectKey(machineBoardDTO dto);
	public int delete(int mbno);
	public int update(machineBoardDTO dto);
	
}
