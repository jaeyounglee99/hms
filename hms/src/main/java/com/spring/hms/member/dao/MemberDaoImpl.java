package com.spring.hms.member.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hms.member.dto.MemberDto;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public MemberDto selectLogin(MemberDto memberDto) {
		return sqlSession.selectOne("member.selectLogin" , memberDto);
	}

	@Override
	public void insertMember(MemberDto memberDto) {
		sqlSession.insert("member.insertMember" , memberDto);
	}

	@Override
	public String selectDupliatedId(String memberId) {
		return sqlSession.selectOne("member.selectDuplicatedId" , memberId);
	}

	
	
}
