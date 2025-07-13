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
        return "pages/login"; // login.jsp
    }

    @PostMapping("/login")
    public String login(HttpServletRequest request) {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if ("admin".equals(username) && "admin123".equals(password)) {
            return "redirect:pages/home";
        } else {
            request.setAttribute("error", "Invalid username or password");
            return "pages/login";
        }
    }

    @GetMapping("/")
    public String redirectToLogin() {
        return "redirect:pages/login";
    }

    // -------------------- STUDENT MANAGEMENT --------------------

    @GetMapping("/home")
    public String home() {
        return "pages/index"; // index.jsp
    }

    @PostMapping("/submit")
    public String submit(@ModelAttribute StudentModel student) {
        repo.save(student);
        return "redirect:pages/students";
    }

    @GetMapping("/students")
    public String viewStudents(HttpServletRequest request) {
        List<StudentModel> students = repo.findAll();
        request.setAttribute("students", students);
        return "pages/view"; // view.jsp
    }

    @GetMapping("/edit/{id}")
    public String editStudent(@PathVariable int id, HttpServletRequest request) {
        StudentModel student = repo.findById(id).orElse(null);
        if (student != null) {
            request.setAttribute("student", student);
            return "pages/edit"; // edit.jsp
        }
        return "redirect:pages/students";
    }

    @PostMapping("/update")
    public String updateStudent(@ModelAttribute StudentModel student) {
        repo.save(student);
        return "redirect:pages/students";
    }

    @GetMapping("/delete/{id}")
    public String deleteStudent(@PathVariable int id) {
        repo.deleteById(id);
        return "redirect:pages/students";
    }
}
