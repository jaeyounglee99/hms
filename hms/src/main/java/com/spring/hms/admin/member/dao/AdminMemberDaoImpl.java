package com.spring.hms.admin.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hms.admin.member.dto.AdminDto;

@Repository
public class AdminMemberDaoImpl implements AdminMemberDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public AdminDto selectAdminLogin(AdminDto adminDto) {
		return sqlSession.selectOne("admin.member.selectAdminLogin" , adminDto);
	}

}
