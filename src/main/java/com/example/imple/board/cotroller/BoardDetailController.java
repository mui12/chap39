package com.example.imple.board.cotroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.imple.board.mapper.BoardMapper;
import com.example.standard.controller.DetailController;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board")  
@Slf4j
public class BoardDetailController implements DetailController<Integer>{

	@Autowired
	BoardMapper mapper;
	
	@Override
	@GetMapping("/detail")
	public String detail(@RequestParam("bno") Integer key, Model model, HttpServletRequest request) {
		log.debug("key = {}", key);
		var board = mapper.selectByBno(key);
		model.addAttribute("board", board);
		return "board/detail";
	}
	

}
