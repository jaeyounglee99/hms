package com.spring.hms.admin.order.service;

import java.util.List;
import java.util.Map;

public interface AdminOrderService {

	public List<Map<String,Object>> getOrderList() throws Exception;
}
