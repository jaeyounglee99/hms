package com.spring.hms.rooms.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.hms.rooms.dto.RoomsDto;
import com.spring.hms.rooms.service.RoomsService;

@Controller
@RequestMapping("/rooms")
public class RoomsController {

	@Autowired
	private RoomsService roomsService;
	
	@RequestMapping(value="/roomsDetail" , method=RequestMethod.GET)
	public ModelAndView roomsDetail(@RequestParam("roomsCd") int roomsCd) {
		
		ModelAndView mv  = new ModelAndView();
		
		RoomsDto roomsDto = roomsService.getRoomsDetail(roomsCd);
		
		mv.setViewName("/rooms/roomsDetail");
		mv.addObject("roomsDto", roomsDto);
		
		Map<String,Object> roomsMap = new HashMap<String, Object>();
		roomsMap.put("roomsSize", roomsDto.getSize());
		roomsMap.put("roomsCd", roomsCd);
		
		mv.addObject("roomsList" , roomsService.getRelatedRoomsList(roomsMap));
		return mv;
	}

}
