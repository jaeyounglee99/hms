package com.spring.hms.order.dao;

import com.spring.hms.member.dto.MemberDto;
import com.spring.hms.order.dto.OrderDto;
import com.spring.hms.rooms.dto.RoomsDto;

public interface OrderDao {

	public RoomsDto selectOneOrderDetail(int roomsCd);
	public MemberDto selectOneOrderer(String memberId);
	public void insertOrder(OrderDto orderDto);
	public void updateRoomsStock(OrderDto orderDto);
	public void updateMemberPoint(OrderDto orderDto);
}
