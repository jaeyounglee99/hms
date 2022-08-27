package com.spring.hms.order.dao;

import com.spring.hms.member.dto.MemberDto;
import com.spring.hms.rooms.dto.RoomsDto;

public interface OrderDao {

	public RoomsDto selectOneOrderDetail(int roomsCd);
	public MemberDto selectOneOrderer(String memberId);
}
