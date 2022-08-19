package com.spring.hms.admin.rooms.dao;

import java.util.List;

import com.spring.hms.rooms.dto.RoomsDto;

public interface AdminRoomsDao {
	
	public List<RoomsDto> selectListRooms();
	public void insertRooms(RoomsDto roomsDto);
	public void updateRooms(RoomsDto roomsDto);

}
