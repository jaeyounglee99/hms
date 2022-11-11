package com.spring.hms.admin.order.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.hms.admin.order.service.AdminOrderService;

@Controller
@RequestMapping("/admin/order")
public class AdminOrderController {

	@Autowired
	private AdminOrderService adminOrderService;
	
	@RequestMapping(value="/adminOrderList" , method=RequestMethod.GET)
	public ModelAndView adminOrderList(HttpServletRequest request) throws Exception{
		
		ModelAndView mv = new ModelAndView();
//		mv.setViewName("/admin/order/adminOrderList");
		mv.addObject("orderList" , adminOrderService.getOrderList());
		
		return mv;
	}
}
