package com.spring.hms.common.dao;

import java.util.List;
import java.util.Map;

import com.spring.hms.common.dto.ContactDto;

public interface CommonDao {

	public void insertContact(ContactDto contactDto) throws Exception;
	public List<ContactDto> selectListContact() throws Exception;
	public void deleteContact(int[] deleteContactCdList) throws Exception;
	public ContactDto selectOneContact(int contactCd) throws Exception;
}
