package com.example.imple.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.authentication.UserServiceBeanDefinitionParser;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import com.example.imple.user.Ydto.UserDTO;
import com.example.imple.user.service.YUserService;

@RestController
@RequestMapping("/users")
public class YUserController {
	@Autowired
	YUserService userService;
	
	//CRUD
	// C -> POST
	// R -> GET
	// U -> PUT
	// D -> DELETE
	
	@PostMapping("/users")
	public UserDTO insertUserDTO(@RequestBody UserDTO user) {
		return userService.insertUser(user);
	}
	
	@GetMapping("/users")
	public List<UserDTO> getAllUsers() {
		return userService.getAllUsers();
	}
	
	@GetMapping("/{userId}")
	public UserDTO getUserByUserID(@PathVariable String userId) {
		return userService.getUserByUserId(userId);
	}

	@PutMapping("/{userId}")
	public void updateUserByPw(@PathVariable String userId, @RequestBody UserDTO user) {
		userService.updateUserPw(userId, user);
	}
	
	@DeleteMapping("/{userId}")
	public void deleteUserById(@PathVariable String userId) {
		userService.deleteUser(userId);
	}
}
