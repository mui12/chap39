package com.example.imple.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.example.imple.board.model.Board;
import com.example.imple.board.model.BoardDTO;
import com.example.imple.user.model.User;
import com.github.pagehelper.Page;

@Mapper
public interface BoardMapper {
	
	int         countAll();
	List<User> 	selectUsers(String id);  
	List<BoardDTO> selectAll();
	List<BoardDTO> selectAllWithUsers();
	Page<BoardDTO> selectPage();
	Page<BoardDTO> selectPageWithUsers();
	BoardDTO  	    selectByIdWithUser(String id);
	 
	
	@Select("""
			select *
				from board
				where id = #{id}      		
			""")							
	Board selectById(@Param("id")int id);
	
	@Select("""
			select *
				from board
				where num = #{num}      		
			""")							
	Board selectBynum(@Param("num")int num);
	
	int insertCountry(BoardDTO board);
	int updateCountry(BoardDTO board);
	int delete(int id);


}
