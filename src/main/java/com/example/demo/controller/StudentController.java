package com.example.demo.controller;

import com.example.demo.model.StudentModel;
import com.example.demo.repository.StudentRepository;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class StudentController {

    @Autowired
    private StudentRepository repo;

    // -------------------- LOGIN HANDLING --------------------

    @GetMapping("/login")
    public String showLoginForm() {
        return "login"; // login.jsp
    }

    @PostMapping("/login")
    public String login(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("admin".equals(username) && "admin123".equals(password)) {
            return "redirect:/home";
        } else {
            request.setAttribute("error", "Invalid username or password");
            return "login";
        }
    }

    @GetMapping("/")
    public String redirectToLogin() {
        return "redirect:/login";
    }

    // -------------------- STUDENT MANAGEMENT --------------------

    @GetMapping("/home")
    public String home() {
        return "index"; // index.jsp
    }

    @PostMapping("/submit")
    public String submit(@ModelAttribute StudentModel student) {
        repo.save(student);
        return "redirect:/students";
    }

    @GetMapping("/students")
    public String viewStudents(HttpServletRequest request) {
        List<StudentModel> students = repo.findAll();
        request.setAttribute("students", students);
        return "view"; // view.jsp
    }

    @GetMapping("/edit/{id}")
    public String editStudent(@PathVariable int id, HttpServletRequest request) {
        StudentModel student = repo.findById(id).orElse(null);
        if (student != null) {
            request.setAttribute("student", student);
            return "edit"; // edit.jsp
        }
        return "redirect:/students";
    }

    @PostMapping("/update")
    public String updateStudent(@ModelAttribute StudentModel student) {
        repo.save(student);
        return "redirect:/students";
    }

    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable int id) {
        repo.deleteById(id);
        return "redirect:/students";
    }
}
