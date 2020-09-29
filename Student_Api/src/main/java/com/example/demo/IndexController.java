package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Dao.StudentRepository;
import com.example.demo.Model.Student;

@Controller
public class IndexController {
	
	@Autowired
	private StudentRepository repo;
	
	@RequestMapping("/")
	public String home(Model m)
	{
		
		m.addAttribute("students", repo.findAll());
		return "index";
	}
	
	
	@PostMapping("addStudent")
	public String addStudent(@ModelAttribute Student student,Model m)
	{
		if(student.getId() == 0)
		{
			repo.save(student);
		}
		else {
			
			repo.updateStudent(student.getFname(),student.getLname(),student.getAddress(),student.getEmail(),student.getMobile(),student.getPassword(),student.getId());
		}
		
		m.addAttribute("students", repo.findAll());
		
		return "index";
	}
	
	
	@PostMapping("editStudent")
	public String updateStudent(@RequestParam("id") int id,Model m)
	{
		Student student = repo.findById(id).orElse(new Student());
		m.addAttribute("student",student);
		return "index";
	}
	

}
