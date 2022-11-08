package com.spring.hms.common.service;

import java.util.List;
import java.util.Map;

import com.spring.hms.common.dto.ContactDto;

public interface CommonService {

	public void addNewContact(ContactDto contactDto) throws Exception;
	public List<ContactDto> getContactList() throws Exception;
	public void removeContact(int[] deleteContactCdList) throws Exception;
	public ContactDto getContactDetail(int contactCd) throws Exception;
}
