package com.spring.hms.order.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hms.member.dto.MemberDto;
import com.spring.hms.order.dto.OrderDto;
import com.spring.hms.rooms.dto.RoomsDto;

@Repository
public class OrderDaoImpl implements OrderDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public RoomsDto selectOneOrderDetail(int roomsCd) {
		return sqlSession.selectOne("order.selectOneOrderDetail" , roomsCd);
	}
	
	@Override
	public MemberDto selectOneOrderer(String memberId) {
		return sqlSession.selectOne("order.selectOneOrderer" , memberId);
	}

	@Override
	public void insertOrder(OrderDto orderDto) {
		sqlSession.insert("order.insertOrder" , orderDto);
	}

//	@Override
//	public void updateStockQty(OrderDto orderDto) {
//		sqlSession.update("order.updateStockQty" , orderDto);
//	}
//
//	@Override
//	public void updateMemberPoint(Map<String, Object> getPoint) {
//		sqlSession.update("order.updateMemberPoint" , getPoint);
//	}




	
}
