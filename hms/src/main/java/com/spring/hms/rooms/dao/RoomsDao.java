package com.spring.hms.rooms.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.spring.hms.rooms.dto.RoomsDto;

@Repository
public interface RoomsDao {

	public List<RoomsDto> selectListRooms(Map<String,Object> roomsListMap);
	public RoomsDto selectOneRooms(int roomsCd);
	public List<RoomsDto> selectRelatedRoomsList(Map<String,Object> roomsMap);
	
}
