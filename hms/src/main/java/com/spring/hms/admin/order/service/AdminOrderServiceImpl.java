package com.spring.hms.admin.order.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.hms.admin.order.dao.AdminOrderDao;

@Service
public class AdminOrderServiceImpl implements AdminOrderService{

	@Autowired AdminOrderDao adminOrderDao;
	
	@Override
	public List<Map<String, Object>> getOrderList() throws Exception {
		return adminOrderDao.selectListOrder();
	}

}
