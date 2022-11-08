package com.spring.hms.common.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.hms.common.dto.ContactDto;

@Repository
public class CommonDaoImpl implements CommonDao{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertContact(ContactDto contactDto) throws Exception{
		sqlSession.insert("common.insertContact" , contactDto);
	}

	@Override
	public List<ContactDto> selectListContact() throws Exception{
		return sqlSession.selectList("common.selectListContact");
	}

	@Override
	public void deleteContact(int[] deleteContactCdList) throws Exception{
		sqlSession.delete("common.deleteContact" , deleteContactCdList);
	}

	@Override
	public ContactDto selectOneContact(int contactCd) throws Exception {
		return sqlSession.selectOne("common.selectOneContact" , contactCd);
	}

}
