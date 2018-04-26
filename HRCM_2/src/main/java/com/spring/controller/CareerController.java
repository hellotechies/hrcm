package com.spring.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.model.Career;
import com.spring.service.UserService;

@Controller
public class CareerController {

	@Autowired
	public UserService userService;

	@RequestMapping(value = "/career", method = RequestMethod.GET)
	public String addCareer(HttpSession session) {
		session.setAttribute("Career", "career");
		System.out.println("invoking add register");
		return "career";
	}

	@RequestMapping(value = "/careerProcess", method = RequestMethod.POST)
	public ModelAndView registerprocess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("career") Career career, @RequestParam("file") MultipartFile file) {

		System.out.println("Test careerProcess");

		System.out.println("File:" + file.getName());
		System.out.println("ContentType:" + file.getContentType());

		try {

			byte[] bytes = file.getBytes();
			career.setResume(bytes);
			/*
			 * document.setFilename(file.getOriginalFilename());
			 * document.setContent(blob);
			 * document.setContentType(file.getContentType());
			 */
		} catch (IOException e) {
			e.printStackTrace();
		}
		if (career.getFirstname() != null) {
			this.userService.addform(career);
		}
		return new ModelAndView("success1","msg","Registered Successfully");
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String singleFileUpload(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {

		if (file.isEmpty()) {
			redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
			return "redirect:uploadStatus";
		}

		try {

			// Get the file and save it somewhere
			byte[] bytes = file.getBytes();
			/*
			 * Path path = Paths.get(UPLOADED_FOLDER +
			 * file.getOriginalFilename()); Files.write(path, bytes);
			 */

			redirectAttributes.addFlashAttribute("message",
					"You successfully uploaded '" + file.getOriginalFilename() + "'");

		} catch (IOException e) {
			e.printStackTrace();
		}

		return "uploadTest";
	}

}




































/*package com.spring.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.model.Career;
import com.spring.service.UserService;

@Controller
public class CareerController {

	@Autowired
	public UserService userService;

	@RequestMapping(value = "/career", method = RequestMethod.GET)
	public String addCareer(HttpSession session) {
		session.setAttribute("Career", "career");
		System.out.println("invoking add register");
		return "career";
	}

	@RequestMapping(value = "/careerProcess", method = RequestMethod.POST)
	public String registerprocess(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("career") Career career, @RequestParam("file") MultipartFile file) {

		System.out.println("Test careerProcess");
		System.out.println("File:" + file.getName());
		System.out.println("ContentType:" + file.getContentType());

		try {

			byte[] bytes = file.getBytes();
			career.setResume(bytes);
			
			 * document.setFilename(file.getOriginalFilename());
			 * document.setContent(blob);
			 * document.setContentType(file.getContentType());
			 
		} catch (IOException e) {
			e.printStackTrace();
		}
		if (career.getFirstname() != null) {
			this.userService.addform(career);
			
		}
		
		return "career";
	
	}    

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String singleFileUpload(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {
          
		if (file.isEmpty()) {
			redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
			return "redirect:uploadStatus";
		}

		try {

			// Get the file and save it somewhere
			byte[] bytes = file.getBytes();
			
			 * Path path = Paths.get(UPLOADED_FOLDER +
			 * file.getOriginalFilename()); Files.write(path, bytes);
			 

			redirectAttributes.addFlashAttribute("message",
					"You successfully uploaded '" + file.getOriginalFilename() + "'");

		} catch (IOException e) {
			e.printStackTrace();
		}

		return "uploadTest";
	}

}

*/