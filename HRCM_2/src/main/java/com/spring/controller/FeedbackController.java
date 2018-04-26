package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Feedback;
import com.spring.service.UserService;

@Controller
public class FeedbackController {

	@Autowired
	public UserService userService;
		
	
	@RequestMapping(value="/feedback" , method=RequestMethod.GET)
	public String addfeedback(HttpSession session) {
		session.setAttribute("Feedback", "feedback");
		System.out.println("invoking add feedback page");
				return "feedback";
	}
 
	@RequestMapping(value = "/fbProcess", method = RequestMethod.POST)
	public ModelAndView registerprocess(HttpServletRequest request, HttpServletResponse response,
					@ModelAttribute("fb") Feedback fb) {
				    if(fb.getFullname()!= null) {
			    	System.out.println("Test feedbackProcess");
			        this.userService.addfeedback(fb);
			   
			}
		  /*  return "emplogin";*/
				return new ModelAndView("emplogin","msg1","feedback submitted sucessfully");	    
				    
				    
		}
}
