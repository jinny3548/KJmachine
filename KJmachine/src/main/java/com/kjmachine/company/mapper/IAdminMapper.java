package com.kjmachine.company.mapper;

import com.kjmachine.company.domain.AdminDTO;

public interface IAdminMapper {

	public AdminDTO login(AdminDTO dto) throws Exception;
	public void update(AdminDTO dto);
}
