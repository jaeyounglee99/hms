package com.spring.hms.member.dao;

import com.spring.hms.member.dto.MemberDto;

public interface MemberDao {

	public void insertMember(MemberDto memberDto);
	public String selectDupliatedId(String memberId);
	public MemberDto selectLogin(MemberDto memberDto);
	
}
