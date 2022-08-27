package com.spring.hms.order.service;

import com.spring.hms.member.dto.MemberDto;
import com.spring.hms.rooms.dto.RoomsDto;

public interface OrderService {

	public RoomsDto getOrderDetail(int roomsCd);
	public MemberDto getOrdererDetail(String memberId);
}
