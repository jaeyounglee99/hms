package com.spring.hms.order.service;


import java.util.Map;

import com.spring.hms.member.dto.MemberDto;
import com.spring.hms.order.dto.OrderDto;
import com.spring.hms.rooms.dto.RoomsDto;

public interface OrderService {

	public RoomsDto getOrderDetail(int roomsCd);
	public MemberDto getOrdererDetail(String memberId);
	public void addOrder(OrderDto orderDto , Map<String,Object> getPoint);
}
