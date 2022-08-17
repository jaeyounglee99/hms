package com.spring.hms.admin.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.hms.admin.member.dao.AdminMemberDao;
import com.spring.hms.admin.member.dto.AdminDto;

@Service
public class AdminMemberServiceImpl implements AdminMemberService{

	@Autowired
	private AdminMemberDao adminMemberDao;
	
	@Override
	public boolean adminLogin(AdminDto adminDto) {
		
		if (adminMemberDao.selectAdminLogin(adminDto) != null) {
			return true;
		}
		return false;
	}

	
}
