package com.spring.hms.order.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.hms.order.dto.OrderDto;
import com.spring.hms.order.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@RequestMapping(value="/orderRooms" , method=RequestMethod.GET)
	public ModelAndView orderRooms(@RequestParam("roomsCd") int roomsCd , @RequestParam("checkIn") String checkIn , @RequestParam("checkOut") String checkOut , @RequestParam("personnel") int personnel , HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/order/orderRooms");
		
		HttpSession session = request.getSession();
		mv.addObject("orderer" , orderService.getOrdererDetail((String)session.getAttribute("memberId")));
		
		return mv;
	}
	

}
