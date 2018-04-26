package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.model.Employee;
import com.spring.model.Round1;
import com.spring.model.Rounds;
import com.spring.model.User;
import com.spring.service.UserService;

@Controller
public class RegistrationController {

	@Autowired
	public UserService userService;
		
	

	@RequestMapping(value="/register" , method=RequestMethod.GET)
	public String addRegister(HttpSession session) {
		session.setAttribute("User", "user");
		System.out.println("invoking add register");
				return "register";
	}
 
	
	@RequestMapping(value = "/registerProcess", method = RequestMethod.POST)
	public String registerprocess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("user") User user) {
		    if(user.getFullname()!= null) {
	    	System.out.println("Test registerProcess");
	        this.userService.register(user);
	    }
	    return "login";
	}

	@RequestMapping(value="/empregform" , method=RequestMethod.GET)
	public String showRegister(HttpSession session) {
		session.setAttribute("Employee", "emp");
		System.out.println("invoking add register");
				return "empregform";
	}
 
	
	@RequestMapping(value = "/empregisterProcess", method = RequestMethod.POST)
	public String empregisterprocess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("emp") Employee emp) {
		    if(emp.getFullname()!= null) {
	    	System.out.println("Test registerProcess");
	        this.userService.addempregister(emp);
	    }
	    return "emplogin";
	}

/*	@RequestMapping(value="/rounds" , method=RequestMethod.GET)
	public String addRoundReg(HttpSession session) {
		session.setAttribute("Rounds", "rounds");
		System.out.println("invoking add  rounds register form");
				return "rounds";
	}
 
	
	@RequestMapping(value = "/roundProcess", method = RequestMethod.POST)
	public String roundprocess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("rounds") Rounds rounds) {
		    if(rounds.getName()!= null) {
	    	System.out.println("Test registerProcess");
	        this.userService.roundreg(rounds);
	    }
	    return "forms";
	} 
*/

	@RequestMapping(value="/round1" , method=RequestMethod.GET)
	public String addRound1(HttpSession session) {
		session.setAttribute("Round1", "round1");
		System.out.println("invoking add  rounds register form");
				return "round1";
	}
 
	
	@RequestMapping(value = "/round1Process", method = RequestMethod.POST)
	public String roundprocess1(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("round1") Round1 round1) {
		    if(round1.getName()!= null) {
	    	System.out.println("Test registerProcess");
	        this.userService.round1reg(round1);
	    }
	    return "round1";
	} 



	
	
	
	
	
	
	
	
	
	
} 