package com.may9th.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {
	
	@RequestMapping(value="may9th/main/contact/contact.do")
	public String getContact(){
		System.out.println("123123");
		return "contact";
	}
	
}
