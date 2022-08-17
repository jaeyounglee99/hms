package com.spring.hms.member.service;

import com.spring.hms.member.dto.MemberDto;

public interface MemberService {

	public boolean login(MemberDto memberDto);
	public void addMember(MemberDto memberDto);
	public String checkDuplicatedId(String memberId);
}
