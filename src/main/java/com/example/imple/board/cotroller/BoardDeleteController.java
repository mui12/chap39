package com.example.imple.board.cotroller;

import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.board.mapper.BoardMapper;
import com.example.imple.board.model.BoardDTO;
import com.example.standard.controller.DeleteController;
import com.example.standard.controller.UpdateController;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board")
@Slf4j
public class BoardDeleteController implements DeleteController<BoardDTO> {
	
	@Autowired
	BoardMapper mapper;

	@Override
	public void delete(Model model, HttpServletRequest request) {
		var error = request.getParameter("error");
		
		if(Objects.isNull(error)) {
			var session = request.getSession();
			session.removeAttribute("board");
			session.removeAttribute("dto");
		}
		
		var bno = request.getParameter("bno");
		if(Objects.nonNull(bno)) {
			var key = Integer.parseInt(bno);
			var board = mapper.selectByBno(key);
			model.addAttribute("board", board);
		}
	}

	@Override
	public String delete(@Valid BoardDTO dto, BindingResult binding, Model model, HttpServletRequest request,
			RedirectAttributes attr) {
		
		var session = request.getSession();
		session.setAttribute("board", dto);
		session.setAttribute("binding", binding);
		
		if (binding.hasErrors()) {
			return "redirect:/board/delete?error";
		}
		
		var board = dto.getModel();
		mapper.delete(board.getBno());
		
		return "redirect:/board/list?delete";
	}
	


}
