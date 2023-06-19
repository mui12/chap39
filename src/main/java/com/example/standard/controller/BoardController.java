package com.example.standard.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletRequest;

public interface BoardController {

	@GetMapping("/board")
	void board(Model model, HttpServletRequest request);
	
}
