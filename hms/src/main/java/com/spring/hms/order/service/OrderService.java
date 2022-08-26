package com.spring.hms.order.service;

import com.spring.hms.member.dto.MemberDto;

public interface OrderService {

	public MemberDto getOrdererDetail(String memberId);
}
