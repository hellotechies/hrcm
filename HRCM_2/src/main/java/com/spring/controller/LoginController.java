package com.spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Career;
import com.spring.model.EmpLogin;
import com.spring.model.Employee;
import com.spring.model.LoginBean;
import com.spring.model.User;
import com.spring.service.UserService;

@Controller
public class LoginController {

	@Autowired
	UserService userService;

	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("inside get login");
		ModelAndView mav = new ModelAndView("login");
	    mav.addObject("login", new LoginBean());
		return "login";
	}

		

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("login") LoginBean login) {
		System.out.println(" Invoking to LoginProcess");
		ModelAndView mav = null;
		System.out.println("emailData..."+ login.getEmailData());
		User user = userService.validateUser(login);
		if (null != user) {
			System.out.println(" Invoking to inbox page");
			Career career =  null;
			//System.out.println("firstname..." + career.getFirstname());
			List<Career> careers = userService.listform();
			System.out.println(" retreving to sql ");
			if (careers != null) {
				//career = careers.get(0);
				mav = new ModelAndView("inbox");
				mav.addObject("careerList", careers);
				/*mav.addObject("firstname", career.getFirstname());
				mav.addObject("message", career.getMessage());
				mav.addObject("resume", career.getResume());
				mav.addObject("mytime",career.getMytime());*/
			} else {
				System.out.println(" returning to careerPage");
				mav = new ModelAndView("career");

			}
		} else { 
			System.out.println(" returning to LoginPage");
			mav = new ModelAndView("login");
			mav.addObject("error", "Username or Password is wrong!!");
		}
		return mav;
	}



	@RequestMapping(value = "/emplogin", method = RequestMethod.GET)
	public String showempLogin(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("inside get login");
		ModelAndView mav = new ModelAndView("emplogin");
		mav.addObject("emplogin", new EmpLogin());
		return "/emplogin";
	}

		

	@RequestMapping(value = "/feedback", method = RequestMethod.POST)
	public String  emploginProcess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("emplogin") EmpLogin emplogin) {
		System.out.println(" Invoking to LoginProcess");
		ModelAndView mav = null;
		System.out.println("email..."+ emplogin.getEmail());
		Employee emp = userService.validateEmployee(emplogin);
		
			if (null != emp) {
				mav = new ModelAndView("forms");
//				mav.addObject("firstname", emp.getFirstname());
			} else {
				mav = new ModelAndView("/emplogin");
				mav.addObject("message", "Username or Password is wrong!!");
			}
			return "feedback";
		}
	}





	