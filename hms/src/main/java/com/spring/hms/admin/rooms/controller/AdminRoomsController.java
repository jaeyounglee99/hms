package com.spring.hms.admin.rooms.controller;

import java.io.File;
import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.spring.hms.admin.rooms.service.AdminRoomsService;
import com.spring.hms.rooms.dto.RoomsDto;
import com.spring.hms.rooms.service.RoomsService;

@Controller
@RequestMapping("/admin/rooms")
public class AdminRoomsController {

	@Autowired
	private AdminRoomsService adminRoomsService;
	
	@Autowired
	private RoomsService roomsService; 
	
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
		roomsDto.setSort(multipartRequest.getParameter("sort"));
		roomsDto.setRoomsNm(multipartRequest.getParameter("roomsNm"));
		roomsDto.setView(multipartRequest.getParameter("view"));
		roomsDto.setPrice(Integer.parseInt( multipartRequest.getParameter("price")));
		roomsDto.setDiscountRate(Integer.parseInt( multipartRequest.getParameter("discountRate")));
		roomsDto.setPoint(Integer.parseInt( multipartRequest.getParameter("point")));
		roomsDto.setFloor(multipartRequest.getParameter("floor"));
		roomsDto.setBedNm(multipartRequest.getParameter("bedNm"));
		roomsDto.setSize(Integer.parseInt( multipartRequest.getParameter("size")));
		roomsDto.setStock(Integer.parseInt( multipartRequest.getParameter("stock")));
		roomsDto.setAmenityBath(multipartRequest.getParameter("amenityBath"));
		roomsDto.setAmenityBed(multipartRequest.getParameter("amenityBed"));
		roomsDto.setFacilities(multipartRequest.getParameter("facilities"));
		roomsDto.setRoomsIntro(multipartRequest.getParameter("roomsIntro"));
		roomsDto.setRoomsInfo(multipartRequest.getParameter("roomsInfo"));
		roomsDto.setRoomsFileName1(multipartRequest.getParameter("roomsFileName1"));
		roomsDto.setRoomsFileName2(multipartRequest.getParameter("roomsFileName2"));
		roomsDto.setRoomsFileName3(multipartRequest.getParameter("roomsFileName3"));
		
		
		Iterator<String> file = multipartRequest.getFileNames();
		int i = 1;
		while (file.hasNext()) {
			
			MultipartFile uploadFile = multipartRequest.getFile(file.next()); 	
			
			
			if (!uploadFile.getOriginalFilename().isEmpty()) {
				String uploadFileName = UUID.randomUUID() + "_" + uploadFile.getOriginalFilename();
				File f = new File(CURR_IMAGE_REPO_PATH + SEPERATOR + uploadFileName);	
				uploadFile.transferTo(f); 
				
				if (i == 1) {
					roomsDto.setRoomsFileName1(uploadFileName);
				}
				else if (i == 2) {
					roomsDto.setRoomsFileName2(uploadFileName);
				}
				else if (i == 3) {
					roomsDto.setRoomsFileName3(uploadFileName);
				}
				i++;
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
	
	@RequestMapping(value="/adminRoomsModify" , method=RequestMethod.GET)
	public ModelAndView modifyRooms(@RequestParam("roomsCd") int roomsCd) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/admin/rooms/adminRoomsModify");
		mv.addObject("roomsDto" , roomsService.getRoomsDetail(roomsCd));
		
		return mv;
	}
	
	
	@RequestMapping(value="/adminRoomsModify" , method=RequestMethod.POST)
	public ResponseEntity<Object> adminRoomsModify(MultipartHttpServletRequest multipartRequest) throws Exception{
		
		multipartRequest.setCharacterEncoding("utf-8");
		
		RoomsDto roomsDto = new RoomsDto();
		roomsDto.setRoomsCd(Integer.parseInt(multipartRequest.getParameter("roomsCd")));
		roomsDto.setSort(multipartRequest.getParameter("sort"));
		roomsDto.setRoomsNm(multipartRequest.getParameter("roomsNm"));
		roomsDto.setView(multipartRequest.getParameter("view"));
		roomsDto.setPrice(Integer.parseInt( multipartRequest.getParameter("price")));
		roomsDto.setDiscountRate(Integer.parseInt( multipartRequest.getParameter("discountRate")));
		roomsDto.setPoint(Integer.parseInt( multipartRequest.getParameter("point")));
		roomsDto.setFloor(multipartRequest.getParameter("floor"));
		roomsDto.setBedNm(multipartRequest.getParameter("bedNm"));
		roomsDto.setSize(Integer.parseInt( multipartRequest.getParameter("size")));
		roomsDto.setStock(Integer.parseInt( multipartRequest.getParameter("stock")));
		roomsDto.setAmenityBath(multipartRequest.getParameter("amenityBath"));
		roomsDto.setAmenityBed(multipartRequest.getParameter("amenityBed"));
		roomsDto.setFacilities(multipartRequest.getParameter("facilities"));
		roomsDto.setRoomsIntro(multipartRequest.getParameter("roomsIntro"));
		roomsDto.setRoomsFileName1(multipartRequest.getParameter("roomsFileName1"));
		roomsDto.setRoomsFileName2(multipartRequest.getParameter("roomsFileName2"));
		roomsDto.setRoomsFileName3(multipartRequest.getParameter("roomsFileName3"));
		
		Iterator<String> file = multipartRequest.getFileNames();
		int i = 1;
		while (file.hasNext()) {
			
			MultipartFile uploadFile = multipartRequest.getFile(file.next()); 	
			
			if (!uploadFile.getOriginalFilename().isEmpty()) {
				String uploadFileName = UUID.randomUUID() + "_" + uploadFile.getOriginalFilename();
				File f = new File(CURR_IMAGE_REPO_PATH + SEPERATOR + uploadFileName);	
				uploadFile.transferTo(f); 
				
				if (i == 1) {
					roomsDto.setRoomsFileName1(uploadFileName);
				}
				else if (i == 2) {
					roomsDto.setRoomsFileName2(uploadFileName);
				}
				else if (i == 3) {
					roomsDto.setRoomsFileName3(uploadFileName);
				}
				i++;
			}
		}
		
		adminRoomsService.modifyRooms(roomsDto);
		
		String jsScript = "<script>";
			   jsScript += "alert('객실정보를 수정하였습니다.');";
			   jsScript += "location.href='adminRoomsList';";
			   jsScript += "</script>";
		
	   HttpHeaders responseHeaders = new HttpHeaders();
	    responseHeaders.add("Content-Type", "text/html; charset=utf-8");
	    
		return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
	}
	
	@RequestMapping(value="/adminRoomsRemove" , method=RequestMethod.GET)
	public ResponseEntity<Object> adminRoomsRemove(@RequestParam("roomsCd") int roomsCd){
		
//		new File(CURR_IMAGE_REPO_PATH + SEPERATOR + roomsService.getRoomsDetail(roomsCd).getRoomsFileName()).delete();
		adminRoomsService.removeRooms(roomsCd);
		
		String jsScript= "<script>";
		jsScript += " alert('등록된 객실을 삭제하였습니다.');";
		jsScript +=" location.href='adminRoomsList';";
		jsScript +="</script>";

		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
		return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
	}
}
