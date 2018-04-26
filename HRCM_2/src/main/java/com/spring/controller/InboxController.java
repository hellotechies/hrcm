package com.spring.controller;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.Career;
import com.spring.model.Inbox;
import com.spring.service.UserService;

@Controller
public class InboxController {

	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/inbox", method = RequestMethod.GET)
	public String showLogin(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("inside get inbox form");
		ModelAndView mav = new ModelAndView("inbox");
	    mav.addObject("login", new Inbox());
		return "inbox";
	}
	
	@RequestMapping(value = "/inboxProcess", method = RequestMethod.POST)
	public void showInbox(HttpServletRequest request, HttpServletResponse response) {
	 {
			System.out.println(" Invoking to InboxProcess");
			ModelAndView mav = null;
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
						}
	}

		
	
	

	@RequestMapping(value = "/download", method = RequestMethod.GET)
	public String downloadfile(@RequestParam("careerId") String careerId , HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		// tell browser program going to return an application file
		// instead of html page

		response.setContentType("application/octet-stream");
		response.setHeader("Content-Disposition", "attachment;filename=\"%s\"");

		try {
			ServletOutputStream out = response.getOutputStream();
			List<Career> careers = userService.listform();

			InputStream in = new ByteArrayInputStream(careerId.toString().getBytes("UTF-8"));

			byte[] outputByte = new byte[4096];
			 //copy binary content to output stream
	        while(in.read(outputByte, 0, 4096) != -1){
	        	out.write(outputByte, 0, 4096);
	        }
	        in.close();
	        out.flush();
	        out.close();

	     }catch(Exception e){
	    	e.printStackTrace();
	   }

	   return null;
	  } 
	

	@RequestMapping(value="/inboxProcess/search" , method = RequestMethod.POST)
	public @ResponseBody List searchPost(@RequestParam("term") String query) {

	    List<Career> retVal = userService.listform();

	    return retVal;
	}
}

