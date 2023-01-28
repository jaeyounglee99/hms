package com.spring.hms.admin.member.dao;

import java.util.List;

import com.spring.hms.admin.member.dto.AdminDto;
import com.spring.hms.member.dto.MemberDto;

public interface AdminMemberDao {
	
	public AdminDto selectAdminLogin(AdminDto adminDto) throws Exception;
	public List<MemberDto> selectListMember() throws Exception;
	
}
