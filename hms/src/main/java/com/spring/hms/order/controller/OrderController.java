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
	
	@RequestMapping(value="/orderRooms" , method=RequestMethod.POST)
	public ResponseEntity<Object> orderRooms(MultipartHttpServletRequest multipartRequest) throws Exception {
		
	multipartRequest.setCharacterEncoding("utf-8");
	
	OrderDto orderDto = new OrderDto();
	orderDto.setCheckIn(multipartRequest.getParameter("checkIn"));
	orderDto.setCheckOut(multipartRequest.getParameter("checkOut"));
	orderDto.setPersonnel(Integer.parseInt(multipartRequest.getParameter("personnel")));
	
//	orderService.orderRooms(orderDto);
	
	HttpHeaders responseHeaders = new HttpHeaders();
    responseHeaders.add("Content-Type", "text/html; charset=utf-8");
    
	return new ResponseEntity<Object>(responseHeaders, HttpStatus.OK);
	
	}

}
