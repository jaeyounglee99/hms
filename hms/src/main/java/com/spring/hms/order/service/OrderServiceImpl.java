package com.spring.hms.order.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.hms.member.dto.MemberDto;
import com.spring.hms.order.dao.OrderDao;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderDao orderDao;
	
	@Override
	public MemberDto getOrdererDetail(String memberId) {
		return orderDao.selectOneOrderer(memberId);
	}

}
