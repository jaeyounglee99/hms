package com.spring.hms.myPage.service;

import com.spring.hms.member.dto.MemberDto;

public interface MyPageService {

	public MemberDto getMyInfo(String memberId);
	public void modifyInfo(MemberDto memberDto);
	public void removeMember(String memberId);
}
