package com.spring.hms.order.controller;



import java.util.HashMap;
import java.util.Map;

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
		mv.addObject("orderImfo" , orderService.getOrderDetail(orderDto.getRoomsCd()));
		mv.addObject("orderer", orderService.getOrdererDetail((String)session.getAttribute("memberId")));
		return mv;
	}
	
	@RequestMapping(value="/orderRooms" , method=RequestMethod.POST)
	public ResponseEntity<Object> orderRoomsByOrderImfo(@RequestParam Map<String,Object> orderMap, HttpServletRequest request){
		
		OrderDto orderDto = new OrderDto();
		
		orderDto.setMemberId((String)orderMap.get("memberId"));
		orderDto.setRoomsCd((int)orderMap.get("roomsCd"));
		orderDto.setCheckIn((String)orderMap.get("checkIn"));
		orderDto.setCheckOut((String)orderMap.get("checkOut"));
		orderDto.setPersonnel((int)orderMap.get("personnel"));
		orderDto.setBreakfast((int)orderMap.get("breakfast"));
		orderDto.setSwimmingPool((int)orderMap.get("setSwimmingPool"));
		orderDto.setPaymentAmt((int)orderMap.get("paymentAmt"));
		orderDto.setOrdererNm((String)orderMap.get("ordererNm"));
		orderDto.setOrdererBirth((String)orderMap.get("ordererBirth"));
		orderDto.setOrdererHp((String)orderMap.get("ordererHp"));
		orderDto.setOrdererEmail((String)orderMap.get("ordererEmail"));
		orderDto.setRequest((String)orderMap.get("request"));
		orderDto.setCardCompanyNm((String)orderMap.get("cardCompanyNm"));
		orderDto.setCardNo1((String)orderMap.get("cardNo1"));
		orderDto.setCardNo2((String)orderMap.get("cardNo2"));
		orderDto.setCardNo3((String)orderMap.get("cardNo3"));
		orderDto.setCardNo4((String)orderMap.get("cardNo4"));
		orderDto.setCardValidityMonth((int)orderMap.get("cardValidityMonth"));
		orderDto.setCardValidityYear((int)orderMap.get("cardValidityYear"));
		
		Map<String,Object> getPoint = new HashMap<String, Object>();
		getPoint.put("point", "point");
		
		orderService.addOrder(orderDto , getPoint);
		
		
		String jsScript = "<script>";
			   jsScript += "alert('예약되었습니다.');";
			   jsScript += "location.href='" + request.getContextPath() + "/myPage/orderConfirm'";
			   jsScript += "</script>";
			   
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
			
		return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
	}
	

}
