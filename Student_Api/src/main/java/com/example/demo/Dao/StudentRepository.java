package com.example.demo.Dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Model.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {

}
