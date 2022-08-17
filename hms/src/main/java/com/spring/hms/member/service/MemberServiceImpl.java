package com.spring.hms.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.hms.member.dao.MemberDao;
import com.spring.hms.member.dto.MemberDto;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDao memberDao;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Override
	public boolean login(MemberDto memberDto) {
		
		MemberDto checkExsistId  = memberDao.selectLogin(memberDto);
		if (checkExsistId != null) {
			if (bCryptPasswordEncoder.matches(memberDto.getPasswd(), checkExsistId.getPasswd())) {
				return true;
			}
		}
		return false;
	}
	
	@Override
	public void addMember(MemberDto memberDto) {
		if (memberDto.getEmailstsYn() == null) memberDto.setEmailstsYn("N");
		if (memberDto.getSmsstsYn() == null) memberDto.setSmsstsYn("N");
		memberDao.insertMember(memberDto);
	}

	@Override
	public String checkDuplicatedId(String memberId) {
		if (memberDao.selectDupliatedId(memberId) == null) return "notDuplicate";
		else											   return "Duplicate";
	}


}
