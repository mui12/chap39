package com.example.imple.board.cotroller;

import java.util.Objects;

import org.apache.ibatis.javassist.compiler.SyntaxError;
import org.mybatis.spring.MyBatisSystemException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.board.mapper.BoardMapper;
import com.example.imple.board.model.BoardDTO;
import com.example.standard.controller.CreateController;
import com.example.standard.controller.DetailController;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board")  
public class BoardCreateController implements CreateController<BoardDTO>{

	@Autowired
	BoardMapper mapper;

	@Override
	public void create(Model model, HttpServletRequest request) {
		var error = request.getParameter("error"); // 에러를 읽어서 
		
		if(Objects.isNull(error)) {
			var session = request.getSession();
			session.removeAttribute("borad");
			session.removeAttribute("dto");
		}	
	}

	@Override
	public String create(@Valid BoardDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {
		
		var session = request.getSession();
		session.setAttribute("board", dto);
		session.setAttribute("binding", binding);
		
		if (binding.hasErrors()) {
			return "redirect:/board/create?error";
		}
		
		var board = dto.getModel();
		try {
			mapper.insertBoard(board);
		} catch (MyBatisSystemException e) {
		    binding.reject("error.insert", "Failed to insert board"); 
		    return "redirect:/board/success?create"; 
		}
			
		return "redirect:/board/list?create";
	}
	
	

}
