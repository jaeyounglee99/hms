package com.spring.hms.rooms.service;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.spring.hms.rooms.dto.RoomsDto;

@Service
public interface RoomsService {
	
	public RoomsDto getRoomsDetail(int roomsCd);
	public List<RoomsDto> getRelatedRoomsList(Map<String,Object> roomsMap);
}
