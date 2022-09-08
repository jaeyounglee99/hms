package com.spring.hms.myPage.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hms.member.dto.MemberDto;

@Repository
public class MyPageDaoImpl implements MyPageDao{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public MemberDto selectOneMyInfo(String memberId) {
		return sqlSession.selectOne("myPage.selectOneMyInfo" , memberId);
	}

	@Override
	public void updateMyInfo(MemberDto memberDto) {
		sqlSession.update("myPage.updteMyInfo" , memberDto);
	}

	@Override
	public void deleteMember(String memberId) {
		sqlSession.delete("myPage.deleteMember" , memberId);
	}

}
