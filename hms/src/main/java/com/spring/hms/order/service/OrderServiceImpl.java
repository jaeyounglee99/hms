package com.spring.hms.order.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.hms.member.dto.MemberDto;
import com.spring.hms.order.dao.OrderDao;
import com.spring.hms.order.dto.OrderDto;
import com.spring.hms.rooms.dto.RoomsDto;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderDao orderDao;
	
	@Override
	public RoomsDto getOrderDetail(int roomsCd) {
		return orderDao.selectOneOrderDetail(roomsCd);
	}
	
	@Override
	public MemberDto getOrdererDetail(String memberId) {
		return orderDao.selectOneOrderer(memberId);
	}

	@Override
	public void addOrder(OrderDto orderDto) {
		orderDao.insertOrder(orderDto);
		orderDao.updateRoomsStock(orderDto);
		orderDao.updateMemberPoint(orderDto);
	}

}
