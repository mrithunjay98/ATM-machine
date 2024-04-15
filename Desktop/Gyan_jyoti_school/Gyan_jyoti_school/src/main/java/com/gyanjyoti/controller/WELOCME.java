package com.gyanjyoti.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class WELOCME {

	
	
	
	@RequestMapping("/home")
	public String home() {
		
		
		return"welcome";
	}
	@RequestMapping("/about")
	public String about() {
		
		
		return"about";
	}
	@RequestMapping("/fees")
	public String fee() {
		
		
		return"fees structure";
	}
	
	@RequestMapping("/classteacherLogin")
	public String classTeacherLogin() {
		
		
		return"Class_Teacher_Login";
	}
	
	
}
