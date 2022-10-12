package com.spring.hms.common.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.hms.common.dao.CommonDao;
import com.spring.hms.common.dto.ContactDto;

@Service
public class CommonServiceImpl implements CommonService {
	
	@Autowired 
	private CommonDao commonDao;

	@Override
	public void addNewContact(ContactDto contactDto) throws Exception {
		commonDao.insertContact(contactDto);
	}

}
