package com.example.imple.board.cotroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.imple.board.mapper.BoardMapper;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class BoardHitcountController {

    @Autowired
    BoardMapper mapper;

    public BoardHitcountController(BoardMapper mapper) {
        this.mapper = mapper;
    }

    @RequestMapping("/list")
    public String list(Model model, HttpServletRequest request) {
        log.trace("list(Model model) called");

        // 기존에 저장된 totalHitCount를 가져옵니다
        Integer hitcount = (Integer) request.getSession().getAttribute("hitcount");
        if (hitcount == null) {
        	hitcount = 0;
        }

        var list = mapper.selectAll();

        // 누적 조회수를 계산하고 세션에 저장합니다
        hitcount += list.size();
        request.getSession().setAttribute("hitcount", hitcount);

        // 뷰에 데이터를 전달하기 위한 메서드 ${list}
        model.addAttribute("list", list);
        model.addAttribute("hitcount", hitcount);

        list.forEach(e -> {
            log.debug(e.toString());
        });

        return "/board/list"; // 뷰의 이름을 반환합니다. JSP 파일명이 "list.jsp"인 경우
    }
}