package com.spring.hms.admin.rooms.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.hms.admin.rooms.service.AdminRoomsService;
import com.spring.hms.rooms.dto.RoomsDto;

@Controller
@RequestMapping("/admin/rooms")
public class AdminRoomsController {

	@Autowired
	private AdminRoomsService adminRoomsService;
	
	
	private static final String CURR_IMAGE_REPO_PATH = "//Users//ijaeyeong//file_repo";
	private static final String SEPERATOR = "//";	// window
	
	@RequestMapping(value="/adminRoomsList" , method=RequestMethod.GET)
	public ModelAndView adminRoomsList() {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/rooms/adminRoomsList");
		mv.addObject("roomsList" , adminRoomsService.getRoomsList());
		
		return mv;
	}
	
	@RequestMapping(value="/adminRoomsAdd" , method=RequestMethod.GET)
	public String addNewRooms() {
		return "/admin/rooms/adminRoomsAdd";
	}
	
	@RequestMapping(value="/adminRoomsAdd" , method=RequestMethod.POST)
	public ResponseEntity<Object> addNewRooms(MultipartHttpServletRequest multipartRequest) throws Exception{
		
		multipartRequest.setCharacterEncoding("utf-8");
		
		RoomsDto roomsDto = new RoomsDto();
		roomsDto.setRoomsNm(multipartRequest.getParameter("roomsNm"));
		roomsDto.setView(multipartRequest.getParameter("view"));
		roomsDto.setPrice(Integer.parseInt( multipartRequest.getParameter("price")));
		roomsDto.setDiscountRate(Integer.parseInt( multipartRequest.getParameter("discountRate")));
		roomsDto.setPoint(Integer.parseInt( multipartRequest.getParameter("point")));
		roomsDto.setFloor(Integer.parseInt( multipartRequest.getParameter("floor")));
		roomsDto.setBedNm(multipartRequest.getParameter("bedNm"));
		roomsDto.setBedCnt(Integer.parseInt( multipartRequest.getParameter("bedCnt")));
		roomsDto.setSize(Integer.parseInt( multipartRequest.getParameter("size")));
		roomsDto.setStoke(Integer.parseInt( multipartRequest.getParameter("stoke")));
		roomsDto.setAmenityBath(multipartRequest.getParameter("amenityBath"));
		roomsDto.setAmenityBed(multipartRequest.getParameter("amenityBed"));
		roomsDto.setFacilities(multipartRequest.getParameter("facilities"));
		roomsDto.setRoomsIntro(multipartRequest.getParameter("roomsIntro"));
		roomsDto.setRoomsFileName(multipartRequest.getParameter("roomsFileName"));
		
		
		Iterator<String> file = multipartRequest.getFileNames();
		if (file.hasNext()) {
			
			MultipartFile uploadFile = multipartRequest.getFile(file.next()); 	
			
			if (!uploadFile.getOriginalFilename().isEmpty()) {
				String uploadFileName = UUID.randomUUID() + "_" + uploadFile.getOriginalFilename();
				File f = new File(CURR_IMAGE_REPO_PATH + SEPERATOR + uploadFileName);	
				uploadFile.transferTo(f); 
				roomsDto.setRoomsFileName(uploadFileName);
			}
		}
	
		adminRoomsService.addNewRooms(roomsDto);
		
		String jsScript = "<script>";
			   jsScript += "alert('상품을 등록하였습니다.');";
			   jsScript += "location.href='adminRoomsList';";
			   jsScript += "</script>";
			   
	   HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
	}
}
