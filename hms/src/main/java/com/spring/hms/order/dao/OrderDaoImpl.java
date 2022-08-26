package com.spring.hms.order.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hms.member.dto.MemberDto;

@Repository
public class OrderDaoImpl implements OrderDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberDto selectOneOrderer(String memberId) {
		return sqlSession.selectOne("order.selectOneOrderer" , memberId);
	}

	
}
