package com.spring.hms.rooms.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.hms.rooms.service.RoomsService;

@Controller
@RequestMapping("/rooms")
public class RoomsController {

	@Autowired
	private RoomsService roomsService;
	
	@RequestMapping(value="/roomsList" , method=RequestMethod.GET)
	public ModelAndView roomsList(@RequestParam Map<String,String> roomsListMap) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/rooms/roomsList");
//		mv.addObject("roomsList" , roomsService.getRoomsList(roomsListMap));
		
		return mv;
	}
	
}
