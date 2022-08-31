package com.spring.hms.myPage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.hms.member.dto.MemberDto;
import com.spring.hms.myPage.dao.MyPageDao;

@Service
public class MyPageServiceImpl implements MyPageService{

	@Autowired
	private MyPageDao myPageDao; 
	
	@Override
	public MemberDto getMyInfo(String memberId) {
		return myPageDao.selectOneMyInfo(memberId);
	}

}
