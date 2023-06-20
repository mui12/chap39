package com.example.imple.board.cotroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.board.mapper.BoardMapper;
import com.example.standard.controller.ListController;
import com.example.standard.controller.PageableController;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board")
@Slf4j
public class BoardListController implements ListController, PageableController {
	
	@Autowired
	BoardMapper mapper;
	
	@Override
	public void list(Model model, HttpServletRequest request) {
		var list = mapper.selectAll();
		
		/* 컨트롤러에서 뷰로 데이터를 전달하기 위한 메서드 ${list}*/
		model.addAttribute("list", list);
		list.forEach(e -> {
			log.debug(e.toString());
		});
	}

	@Override
	public String page(int pageNum, int pageSize, Model model) {
		log.trace("page(int pageNum, int pageSize, Model model) called");
		
		PageHelper.startPage(pageNum, pageSize);
		var list = mapper.selectPage();
		var paging = PageInfo.of(list, 10);
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		
		return "/board/list";
	}

}
