package com.spring.hms.myPage.controller;

import javax.servlet.http.HttpServletRequest;

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
	
}
