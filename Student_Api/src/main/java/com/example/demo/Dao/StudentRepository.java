package com.example.demo.Dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.demo.Model.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {

	@Transactional
	@Modifying
	@Query("update Student set fname=:fname,lname =:lname,address =:address,email =:email,mobile =:mobile ,password =:password where id=:id")
	void updateStudent(@Param("fname")String fname,@Param("lname")String lname,@Param("address")String address,@Param("email")String email,@Param("mobile")String mobile,@Param("password")String password,@Param("id")int id);

	
	
}
