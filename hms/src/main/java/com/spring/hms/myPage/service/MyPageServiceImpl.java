package com.spring.hms.myPage.service;

import java.util.List;
import java.util.Map;

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

	@Override
	public void modifyInfo(MemberDto memberDto) {
		if (memberDto.getSmsstsYn() == null) memberDto.setSmsstsYn("N"); 
		if (memberDto.getEmailstsYn() == null) memberDto.setEmailstsYn("N");
		myPageDao.updateMyInfo(memberDto);
	}

	@Override
	public void removeMember(String memberId) {
		myPageDao.deleteMember(memberId);
	}

	@Override
	public List<Map<String, Object>> getMyOrderList(String memberId) {
		return myPageDao.selectListMyOrder(memberId);
	}

	@Override
	public Map<String, Object> getMyOrderDetail(Map<String, Object> orderDetailMap) {
		return myPageDao.selectOneMyOrder(orderDetailMap);
	}

}
