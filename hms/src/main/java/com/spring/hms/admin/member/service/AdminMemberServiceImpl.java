package com.spring.hms.admin.member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.hms.admin.member.dao.AdminMemberDao;
import com.spring.hms.admin.member.dto.AdminDto;
import com.spring.hms.member.dto.MemberDto;

@Service
public class AdminMemberServiceImpl implements AdminMemberService{

	@Autowired
	private AdminMemberDao adminMemberDao;
	
	@Override
	public boolean adminLogin(AdminDto adminDto) throws Exception{
		
		if (adminMemberDao.selectAdminLogin(adminDto) != null) {
			return true;
		}
		return false;
	}

	@Override
	public List<MemberDto> getMemberList() throws Exception {
		return adminMemberDao.selectListMember();
	}

	
}
