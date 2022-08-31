package com.spring.hms.myPage.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	
	
}
