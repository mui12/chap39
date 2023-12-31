package com.example.imple.user.Yrepository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.imple.board.model.BoardDTO;
import com.example.imple.user.Ydto.UserDTO;

@Repository
public class UserRepository {
	// DB연동하는 코드
	// JPA
		static public ArrayList<UserDTO> users;
		
		static {
			users = new ArrayList<>();
			users.add(new UserDTO("kang", "test1", "1234"));
			users.add(new UserDTO("park", "test1", "1234"));
			users.add(new UserDTO("kim", "test1", "1234"));
		}
		
		public UserDTO insertUser(UserDTO user) {
			users.add(user);
			return user;
		}
		
		public List<UserDTO> getAllUsers() {
			return users;
		}
		
		public UserDTO getUserByUserId(String userId) {
			return users.stream()
					    .filter(userDTO -> userDTO.getUserId().equals(userId))
					    .findAny()
					    .orElse(new UserDTO("","",""));
		}
		
		public void updateUserPw(String userId, UserDTO user) {
			users.stream()
			     .filter(userDTO -> userDTO.getUserId().equals(userId))
			     .findAny()
			     .orElse(new UserDTO("","",""))
				 .setUserPw(user.getUserPw());
		}
		
		public void deleteUser(String userId) {
			users.removeIf(userDTO -> userDTO.getUserId().equals(userId));
		}
		
		
}
