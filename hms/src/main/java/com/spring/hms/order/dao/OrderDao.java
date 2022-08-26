package com.spring.hms.order.dao;

import com.spring.hms.member.dto.MemberDto;

public interface OrderDao {

	public MemberDto selectOneOrderer(String memberId);
}
