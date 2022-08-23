package com.spring.hms.admin.rooms.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hms.rooms.dto.RoomsDto;

@Repository
public class  AdminRoomsDaoImpl implements AdminRoomsDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<RoomsDto> selectListRooms() {
		return sqlSession.selectList("admin.rooms.selectListRooms");
	}
	
	@Override
	public void insertRooms(RoomsDto roomsDto) {
		sqlSession.insert("admin.rooms.insertRooms" , roomsDto);
	}

	@Override
	public void updateRooms(RoomsDto roomsDto) {
		sqlSession.update("admin.rooms.updateRooms" , roomsDto);
	}

	@Override
	public void deleteRooms(int roomsCd) {
		sqlSession.delete("admin.rooms.deleteRooms" , roomsCd);
	}


}
