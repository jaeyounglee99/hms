package com.spring.hms.myPage.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.hms.member.dto.MemberDto;
import com.spring.hms.myPage.service.MyPageService;

@Controller
@RequestMapping("/myPage")
public class MypageController {

	@Autowired
	private MyPageService myPageService;
	
	@RequestMapping(value="/myInfo" , method=RequestMethod.GET)
	public ModelAndView myInfo(@RequestParam("memberId") String memberId) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/myPage/myInfo");
		mv.addObject("memberDto" , myPageService.getMyInfo(memberId));
		
		return mv;
		
	}
	
	@RequestMapping(value="/modifyInfo" , method=RequestMethod.POST)
	public ResponseEntity<Object> modifyInfo(MemberDto memberDto , HttpServletRequest request){
		
		myPageService.modifyInfo(memberDto);
		
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
		String jsScript  = "<script>";
				jsScript += " alert('수정되었습니다.');";
				jsScript += " location.href='" + request.getContextPath() + "/myPage/myInfo?memberId=" + memberDto.getMemberId() +  "';";
				jsScript += " </script>";
		
		return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
		
	}
	
	@RequestMapping(value="/removeMember" , method=RequestMethod.GET)
	public ResponseEntity<Object> removeMember(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		session.invalidate(); 
		
		myPageService.removeMember(request.getParameter("memberId"));
		HttpHeaders responseHeaders = new HttpHeaders();
		responseHeaders.add("Content-Type", "text/html; charset=utf-8");
		
		String jsScript  = "<script>";
				jsScript += "alert('탈퇴되었습니다.');";
				jsScript += "location.href='" + request.getContextPath() + "/';";
				jsScript += "</script>";
		
		return new ResponseEntity<Object>(jsScript, responseHeaders, HttpStatus.OK);
		
	}
	
	@RequestMapping(value="/myOrderList" , method=RequestMethod.GET)
	public ModelAndView myOrderList(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/myPage/myOrderList");
		mv.addObject("myOrderList" , myPageService.getMyOrderList((String)session.getAttribute("memberId")));
		
		return mv;
	}
	
	@RequestMapping(value="/myOrderDetail" , method=RequestMethod.GET)
	public ModelAndView myOrderDetail(@RequestParam Map<String,Object> orderDetailMap) {
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/myPage/myOrderDetail");
		mv.addObject("myOrder" , myPageService.getMyOrderDetail(orderDetailMap));
		
		return mv;
	}
	
}
