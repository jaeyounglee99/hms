package com.spring.hms.common.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hms.common.dto.ContactDto;

@Repository
public class CommonDaoImpl implements CommonDao{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertContact(ContactDto contactDto) {
		sqlSession.insert("common.insertContact" , contactDto);
	}
	
	
}
