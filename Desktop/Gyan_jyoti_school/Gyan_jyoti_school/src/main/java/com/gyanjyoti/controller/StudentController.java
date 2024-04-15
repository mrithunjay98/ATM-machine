package com.gyanjyoti.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.gyanjyoti.entity.Student;
import com.gyanjyoti.repo.studentRepo;

;

@Controller
public class StudentController {

	@Autowired
	private studentRepo repo;
	
	
	  
	
	@PostMapping("/create")
	public String saveStudent(@ModelAttribute ("abcd") Student  student) {
		
		
		repo.save(student);
		return "Class_teachers";
		
	}
	
	@GetMapping("/listStudent")
	public String allStudent(Model m) {
		
		
		List<Student> findAll = repo.findAll();
		m.addAttribute("students",findAll);
		System.out.println(findAll);
	//	return "list_student";
      return "list_student";
		
	}
	
	
	
}
