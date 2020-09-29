package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.Dao.StudentRepository;
import com.example.demo.Model.Student;

@Controller
public class IndexController {
	
	@Autowired
	private StudentRepository repo;
	
	public String home()
	{
		return "index";
	}
	
	
	@PostMapping("addStudent")
	public String addStudent(@ModelAttribute Student student,Model m)
	{
		
		repo.save(student);
		
		m.addAttribute("student", student);
		
		return "index";
	}
	

}
