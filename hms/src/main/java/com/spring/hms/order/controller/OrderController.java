package com.spring.hms.order.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.hms.order.dto.OrderDto;
import com.spring.hms.order.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="/checkRoomsOption" , method=RequestMethod.GET)
	public ModelAndView checkRoomsOption(OrderDto orderDto , HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/order/checkRoomsOption");
		
		HttpSession session = request.getSession();
		
		mv.addObject("orderDto" ,orderDto);
		mv.addObject("orderImfo" , orderService.getOrderDetail(orderDto.getRoomsCd()));
		
		return mv;
	}
	
	@RequestMapping(value="/orderRooms" , method=RequestMethod.GET)
	public ModelAndView orderRooms(OrderDto orderDto , HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/order/orderRooms");
		
		HttpSession session = request.getSession();
		
		mv.addObject("orderDto" , orderDto);
		return mv;
	}
	

}
