package com.example.demo.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import com.example.demo.model.StudentModel;
import com.example.demo.repository.StudentRepository;

@Controller
public class StudentController {

    @Autowired
    private StudentRepository repo;

    @GetMapping("/home")
    public String home() {
        return "index"; 
    }

    @PostMapping("/submit")
    
   public String submit(StudentModel student) {
	repo.save(student);
	return "index";
}
}

