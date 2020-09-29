package com.example.demo;

import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.Dao.StudentRepository;
import com.example.demo.Model.Student;

@org.springframework.web.bind.annotation.RestController
public class RestController {

	@Autowired
	private StudentRepository repo;
	
	@GetMapping("students")
	public List<Student> getStudents()
	{
		return repo.findAll();
	}
	
	@GetMapping("student/{id}")
	public Student getStudent(@PathVariable("id") int id)
	{
		Student student = repo.findById(id).orElse(new Student());
		return student;
	}
	
	@PostMapping("student")
	public Student addStudent(Student student)
	{
		repo.save(student);
		
		return student;
	}
}
