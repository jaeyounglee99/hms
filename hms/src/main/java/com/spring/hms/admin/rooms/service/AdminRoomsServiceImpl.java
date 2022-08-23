package com.spring.hms.admin.rooms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.hms.admin.rooms.dao.AdminRoomsDao;
import com.spring.hms.rooms.dto.RoomsDto;

@Service
public class AdminRoomsServiceImpl implements AdminRoomsService{

	@Autowired
	private AdminRoomsDao adminRoomsDao;
	
	@Override
	public List<RoomsDto> getRoomsList() {
		return adminRoomsDao.selectListRooms();
	}

	@Override
	public void addNewRooms(RoomsDto roomsDto) {
		adminRoomsDao.insertRooms(roomsDto);
	}

	@Override
	public void modifyRooms(RoomsDto roomsDto) {
		adminRoomsDao.updateRooms(roomsDto);
	}

	@Override
	public void removeRooms(int roomsCd) {
		adminRoomsDao.deleteRooms(roomsCd);
	}
	
}
