package com.spring.hms.rooms.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hms.rooms.dto.RoomsDto;

@Repository
public class RoomsDaoImpl implements RoomsDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public RoomsDto selectOneRooms(int roomsCd) {
		return sqlSession.selectOne("rooms.selectOneRooms" , roomsCd);
	}

	@Override
	public List<RoomsDto> selectRelatedRoomsList(Map<String, Object> roomsMap) {
		return sqlSession.selectList("rooms.selectListRelatedRooms" , roomsMap);
	}


}
