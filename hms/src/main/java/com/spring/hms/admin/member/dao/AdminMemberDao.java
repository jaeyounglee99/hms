package com.spring.hms.admin.member.dao;

import com.spring.hms.admin.member.dto.AdminDto;

public interface AdminMemberDao {
	
	public AdminDto selectAdminLogin(AdminDto adminDto);

}
