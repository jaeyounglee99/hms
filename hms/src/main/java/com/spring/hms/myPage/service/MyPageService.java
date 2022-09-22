package com.spring.hms.myPage.service;

import java.util.List;
import java.util.Map;

import com.spring.hms.member.dto.MemberDto;

public interface MyPageService {

	public MemberDto getMyInfo(String memberId);
	public void modifyInfo(MemberDto memberDto);
	public void removeMember(String memberId);
	public List<Map<String,Object>> getMyOrderList(String memberId);
}
