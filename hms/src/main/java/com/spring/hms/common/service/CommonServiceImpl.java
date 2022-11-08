package com.spring.hms.common.service;

import java.util.List;
import java.util.Map;

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

	@Override
	public List<ContactDto> getContactList() throws Exception {
		return commonDao.selectListContact();
	}

	@Override
	public void removeContact(int[] deleteContactCdList) throws Exception{
		commonDao.deleteContact(deleteContactCdList);
	}

	@Override
	public ContactDto getContactDetail(int contactCd) throws Exception {
		return commonDao.selectOneContact(contactCd);
	}


	

}
