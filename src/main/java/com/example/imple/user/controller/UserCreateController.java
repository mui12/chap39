package com.example.imple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.imple.user.mapper.UserMapper;
import com.example.imple.user.model.UserDTO;
import com.example.standard.controller.CreateController;

import jakarta.servlet.http.HttpServletRequest;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/user") 
@Slf4j
public class UserCreateController implements CreateController<UserDTO> {

	@Autowired
	UserMapper mapper;

	
	/* get양식을받음 */
	@Override
	public void create(Model model, HttpServletRequest request) {
		log.info("GET create()...");
	}

	
	
	/* Submit 하면 양식을 받아서 들어옴 */ 
	@Override
	public String create(UserDTO dto, BindingResult binding, Model model, HttpServletRequest request, RedirectAttributes attr) {
		log.info("POST create()...");
		System.out.println(dto);
		
		var session = request.getSession();
		session.setAttribute("user", dto);
		session.setAttribute("binding", binding);
		
		// binding 
		if (binding.hasErrors())
			return "redirect:/user/create?error"; 
		
		// 양식 성공시
		return "redirect:/user/success?create";

	
	
	}

}
