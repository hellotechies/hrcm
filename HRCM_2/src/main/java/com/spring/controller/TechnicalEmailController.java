package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.service.UserService;

@Controller
public class TechnicalEmailController {
	
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value="/forms" , method=RequestMethod.GET)
	public String addCareer(HttpSession session) {
		session.setAttribute("Forms", "form");
		System.out.println("invoking add Technical forms");
				return "forms";
	}
 
	
	
}
