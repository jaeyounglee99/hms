package com.spring.hms.common.controller;


import java.io.File;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.hms.common.dto.ContactDto;
import com.spring.hms.common.service.CommonService;

import net.coobird.thumbnailator.Thumbnails;

@Controller
public class CommonController {

	@Autowired
	private CommonService commonService;
	
	private static final String CURR_IMAGE_REPO_PATH = "//Users//ijaeyeong//file_repo";
	private static final String SEPERATOR = "//";	// window
	
	@RequestMapping(value="/thumbnails")
	public void thumbnails(@RequestParam("roomsFileName") String roomsFileName, HttpServletResponse response) throws Exception {
		
		OutputStream out = response.getOutputStream();
		String filePath = CURR_IMAGE_REPO_PATH + SEPERATOR + roomsFileName;
		
		File image = new File(filePath);
		if (image.exists()) { 
			Thumbnails.of(image).size(800,800).outputFormat("png").toOutputStream(out);
		}
		byte[] buffer = new byte[1024 * 8];
		out.write(buffer);
		out.close();
	}
	
	@RequestMapping(value="/contact" , method=RequestMethod.GET)
	public ModelAndView contact() {
		return new ModelAndView("/contact");
	}

	@RequestMapping(value="/contact" , method=RequestMethod.POST)
	public ResponseEntity<Object> contact(ContactDto contactDto , HttpServletRequest request) throws Exception{
		
		commonService.addNewContact(contactDto);
		String jsScript  = "<script>";
				jsScript += " alert('컨텍트 정보가 등록 되었습니다.');";
				jsScript += " location.href='" + request.getContextPath() + "/';";
				jsScript += " </script>";
 
	   HttpHeaders responseHeaders = new HttpHeaders();
	   responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
	}
}
