package com.spring.hms.admin.member.service;

import java.util.List;

import com.spring.hms.admin.member.dto.AdminDto;
import com.spring.hms.member.dto.MemberDto;

public interface AdminMemberService {
	
	public boolean adminLogin(AdminDto adminDto) throws Exception;
	public List<MemberDto> getMemberList() throws Exception;

}
