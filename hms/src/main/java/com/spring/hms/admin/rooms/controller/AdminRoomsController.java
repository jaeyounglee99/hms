package com.spring.hms.admin.rooms.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor.HSSFColorPredefined;
import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.FillPatternType;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
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

import com.spring.hms.rooms.dto.RoomsDto;
import com.spring.hms.admin.rooms.service.AdminRoomsService;
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
	
	/// 엑셀 추가 , 개인정보보호동의 추가

	@RequestMapping(value="/roomsExcelExport" , method=RequestMethod.GET)
	public void roomsExcelExport(HttpServletResponse response , @RequestParam Map<String, String> dateMap) throws Exception {
		  
		SimpleDateFormat fileSdf = new SimpleDateFormat("yyyy_MM_dd_hh_mm");
		SimpleDateFormat dateSdf = new SimpleDateFormat("yyyy-MM-dd");
		String makeFileTime = fileSdf.format(new Date());
		String makeFileName = makeFileTime + "_roomsList.xls";
		
	    // 워크북 생성
	    Workbook wb = new HSSFWorkbook();
	    Sheet sheet = wb.createSheet("객실리스트");
	    Row row = null;
	    Cell cell = null;

	    int rowNo = 0;

	    // 테이블 헤더용 스타일
	    CellStyle headStyle = wb.createCellStyle();
	    // 가는 경계선
	    headStyle.setBorderTop(BorderStyle.THIN);
	    headStyle.setBorderBottom(BorderStyle.THIN);
	    headStyle.setBorderLeft(BorderStyle.THIN);
	    headStyle.setBorderRight(BorderStyle.THIN);

	    // 노란색 배경
	    headStyle.setFillForegroundColor(HSSFColorPredefined.YELLOW.getIndex());
	    headStyle.setFillPattern(FillPatternType.SOLID_FOREGROUND);
	    
	    // 가운데 정렬
	    headStyle.setAlignment(HorizontalAlignment.CENTER);

	    // 데이터용 경계 스타일 테두리만 지정
	    CellStyle bodyStyle = wb.createCellStyle();
	    bodyStyle.setBorderTop(BorderStyle.THIN);
	    bodyStyle.setBorderBottom(BorderStyle.THIN);
	    bodyStyle.setBorderLeft(BorderStyle.THIN);
	    bodyStyle.setBorderRight(BorderStyle.THIN);

	    // 헤더 생성
	    row = sheet.createRow(rowNo++);
	    cell = row.createCell(0);
	    cell.setCellStyle(headStyle);
	    cell.setCellValue("객실번호");
	    cell = row.createCell(1);
	    cell.setCellStyle(headStyle);
	    cell.setCellValue("객실이름");
	    cell = row.createCell(2);
	    cell.setCellStyle(headStyle);
	    cell.setCellValue("전망");
	    cell = row.createCell(3);
	    cell.setCellStyle(headStyle);
	    cell.setCellValue("층수");
	    cell = row.createCell(4);
	    cell.setCellStyle(headStyle);
	    cell.setCellValue("객실가격");
	    cell = row.createCell(5);
	    cell.setCellStyle(headStyle);
	    cell.setCellValue("등록일자");

		for (RoomsDto roomsDto :  adminRoomsService.getRoomsList()) {
			row = sheet.createRow(rowNo++);
	        cell = row.createCell(0);
	        cell.setCellStyle(bodyStyle);
	        cell.setCellValue(roomsDto.getRoomsCd());
	        cell = row.createCell(1);
	        cell.setCellStyle(bodyStyle);
	        cell.setCellValue(roomsDto.getRoomsNm());
	        cell = row.createCell(2);
	        cell.setCellStyle(bodyStyle);
	        cell.setCellValue(roomsDto.getView());
	        cell = row.createCell(3);
	        cell.setCellStyle(bodyStyle);
	        cell.setCellValue(roomsDto.getFloor());
	        cell = row.createCell(4);
	        cell.setCellStyle(bodyStyle);
	        cell.setCellValue(roomsDto.getPrice());
	        cell = row.createCell(5);
	        cell.setCellStyle(bodyStyle);
	        cell.setCellValue(dateSdf.format(roomsDto.getEnrollDt()));
		} 

	    response.setContentType("ms-vnd/excel");
	    response.setHeader("Content-Disposition", "attachment;filename=" + makeFileName);

	    // 엑셀 출력
	    wb.write(response.getOutputStream());
	    wb.close();
			
	}
}
