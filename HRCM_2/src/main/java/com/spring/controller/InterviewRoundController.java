package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.spring.service.UserService;

@Controller
public class InterviewRoundController {

	@Autowired
	UserService userService;
	
	@RequestMapping(value="/RGForm" , method=RequestMethod.GET)
	public String addfoms(HttpSession session) {
		session.setAttribute("InterviewRound", "round");
		System.out.println("invoking registering to technical round");
				return "RGForm";
	}
 
	
/*	@RequestMapping(value = "/techroundProcess", method = RequestMethod.POST)
	public String registerprocess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("techround") Composemail techround) {
		
		    return "RGForm";
		} */

}

	

