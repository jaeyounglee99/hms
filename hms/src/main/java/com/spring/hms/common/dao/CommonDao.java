package com.spring.hms.common.dao;

import java.util.List;
import java.util.Map;

import com.spring.hms.common.dto.ContactDto;

public interface CommonDao {

	public void insertContact(ContactDto contactDto);
	public List<ContactDto> selectListContact();
	public void deleteContact(int[] deleteContactCdList);
}
