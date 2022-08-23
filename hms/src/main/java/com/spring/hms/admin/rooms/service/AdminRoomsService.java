package com.spring.hms.admin.rooms.service;

import java.util.List;

import com.spring.hms.rooms.dto.RoomsDto;

public interface AdminRoomsService {
	
	public List<RoomsDto> getRoomsList();
	public void addNewRooms(RoomsDto roomsDto);
	public void modifyRooms(RoomsDto roomsDto);
	public void removeRooms(int roomsCd);

}
