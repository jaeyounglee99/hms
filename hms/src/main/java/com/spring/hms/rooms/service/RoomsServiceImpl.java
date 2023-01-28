package com.spring.hms.rooms.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.hms.rooms.dao.RoomsDao;
import com.spring.hms.rooms.dto.RoomsDto;

@Service
public class RoomsServiceImpl implements RoomsService{

	@Autowired
	private RoomsDao roomsDao;

	@Override
	public List<RoomsDto> getRoomsList(Map<String, Object> roomsListMap) {
		return roomsDao.selectListRooms(roomsListMap);
	}	

	@Override
	public RoomsDto getRoomsDetail(int roomsCd) {
		return roomsDao.selectOneRooms(roomsCd);
	}

	@Override
	public List<RoomsDto> getRelatedRoomsList(Map<String, Object> roomsMap) {
		return roomsDao.selectRelatedRoomsList(roomsMap);
	}

}
