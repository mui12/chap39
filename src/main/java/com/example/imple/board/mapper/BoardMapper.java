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
	List<Board> selectAll();
	List<Board> selectAllWithUsers();
	Page<Board> selectPage();
	Page<Board> selectPageWithUsers();
	Board		selectByBno(Integer key);
	Board  	    selectByIdWithUser(String id);
	 
	int insertBorad(Board board);
	int updateBoard(Board board);
	int delete(Integer bno);


}
