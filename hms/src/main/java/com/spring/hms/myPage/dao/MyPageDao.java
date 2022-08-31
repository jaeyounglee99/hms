package com.spring.hms.myPage.dao;

import com.spring.hms.member.dto.MemberDto;

public interface MyPageDao {

	public MemberDto selectOneMyInfo(String memberId);
}
