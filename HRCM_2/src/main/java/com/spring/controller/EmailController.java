package com.spring.controller;

 
import java.util.Properties;
 
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailMessage;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.model.EmailInfo;
 
@Controller
public class EmailController {
	@Autowired
	ServletContext context;
	@Autowired
	JavaMailSender mailSender;
 
	@RequestMapping(value = "input", method = RequestMethod.GET)
	public String showForm(ModelMap model) {
		model.addAttribute("mail", new com.spring.model.EmailInfo());
		return "AttachEmailInput";
	}
 
@RequestMapping(value = "send", method = RequestMethod.POST)
	public String sendWithAttach(ModelMap model,
			@ModelAttribute("mail") com.spring.model.EmailInfo mailInfo) {
		try {
			
			final JavaMailSenderImpl ms = (JavaMailSenderImpl) mailSender;
			//get from email is username
			String frEmail = ms.getJavaMailProperties().get("mail.smtp.email").toString();
			((MailMessage) mailInfo).setFrom(frEmail);			
			SimpleMailMessage message = new SimpleMailMessage();
			message.setText(mailInfo.getFirstname());
			message.setFrom(mailInfo.getEmail());
			message.setTo(mailInfo.getMessage());
message.setText(mailInfo.getExperience());
message.setText(mailInfo.getPosition());
message.setSentDate(mailInfo.getMytime());


			
			
		/*	 message.setFirstname(mailInfo.getFirstname());
			message.setLastname(mailInfo.getLastname());
			message.setEmail(mailInfo.getEmail());
			message.setPhone(mailInfo.getPhone());
			message.setCountry(mailInfo.getCountry());
			message.setCity(mailInfo.getCity());
			message.setAddress(mailInfo.getAddress());
			message.setExperience(mailInfo.getExperience());
			message.setPosition(mailInfo.getPosition());
			message.setMessage(mailInfo.getMessage());*/
			ms.setDefaultEncoding("UTF-8");
			ms.send(message);
			//mailSender.send(message);
		} catch (Exception ex) {
			model.addAttribute("error", ex.getMessage());
			return "AttachEmailSuccess";
		}
		return "AttachEmailSuccess";
	}
}