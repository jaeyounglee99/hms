package com.spring.hms.myPage.dao;

import java.util.List;
import java.util.Map;

import com.spring.hms.member.dto.MemberDto;

public interface MyPageDao {

	public MemberDto selectOneMyInfo(String memberId);
	public void updateMyInfo(MemberDto memberDto);
	public void deleteMember(String memberId);
	public List<Map<String,Object>> selectListMyOrder(String memberId);
	public Map<String,Object> selectOneMyOrder(Map<String,Object> orderDetailMap);
}
