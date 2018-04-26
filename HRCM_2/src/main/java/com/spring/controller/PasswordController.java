package com.spring.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.model.Password;
import com.spring.service.UserService;

@Controller
public class PasswordController {

	@Autowired
	UserService userService;

	@RequestMapping(value = "/forgotpswd", method = RequestMethod.GET)
	public String addRegister(HttpSession session) {
		session.setAttribute("Password", "resetpass");
		System.out.println("invoking add password page");
		return "forgotpswd";
	}

	

	@RequestMapping(value = "/resetPassword", method = RequestMethod.POST)
	public String submit(Model model, @ModelAttribute("passwd") Password passwd) {
		String returnMsg = "login";

		if (passwd != null && passwd.getEmail() != null & passwd.getPass() != null) {
			if (null != userService) {
				if (userService.isValidemail(passwd)) {
					model.addAttribute("msg", "Password Changed");
					returnMsg = "login";
				} else {
					model.addAttribute("error", " Password is not match");
					returnMsg = "forgotpswd";
				}
			}
		}
		return returnMsg;
	}

}
