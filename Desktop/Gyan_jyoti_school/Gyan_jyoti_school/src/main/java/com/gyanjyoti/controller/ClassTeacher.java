package com.gyanjyoti.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gyanjyoti.login.ClassTeacherLogin;
import com.gyanjyoti.login.PrincipleLogin;
import com.gyanjyoti.repo.CteacherRepo;


@Controller
public class ClassTeacher {
	
	
	@Autowired
private CteacherRepo repo;

	
	@RequestMapping("/VerifyClassTeacherlogin")
	public String verifyLogin(@ModelAttribute("abcd") ClassTeacherLogin ct,ModelMap m){
		
		String email = ct.getEmail();
		String password = ct.getPassword();
		
		ClassTeacherLogin findByemail = repo.findByemail(email);
		
		String email2 = findByemail.getEmail();
		String password2 = findByemail.getPassword();
		
		
		String name = findByemail.getName();
		String className = findByemail.getClassName();
		String roomNo = findByemail.getRoomNo();
		System.out.println(roomNo +  "-"  +name);
		System.out.println(className );
		
		if(email.equals(email2)&&password.equals(password2)) {
			
			System.out.println("sucess");
			
			m.addAttribute("name",name);
			m.addAttribute("className",className);
			m.addAttribute("room",roomNo);
			return "Class_teachers";
		}
		
		
	return null;
	
	}
	@RequestMapping("/redirect")
	public String studentform(@RequestParam("name")String s3,@RequestParam("className")String s,@RequestParam("room") String s2, ModelMap m) {
		  m.addAttribute("className",s);
		  m.addAttribute("room",s2);
		  m.addAttribute("name",s3);
		  return "create_student";
		  
	  }
	
	
	
}
