package com.example.imple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserLoginController {
	
	@Autowired
	private HttpSession session;
	
	
	@GetMapping("/login")
	void login(HttpServletRequest request) {
		String referer = request.getHeader("referer");
        session.setAttribute("previousPage", referer);
	}
	
	@PostMapping("/login-fail")
	String loginFail() {
		String previousPage = (String) session.getAttribute("previousPage");
		return "user/login";
	}
	
	@GetMapping("/joinagree")
	void joinagree() {
		
	}
	
	
	
}
