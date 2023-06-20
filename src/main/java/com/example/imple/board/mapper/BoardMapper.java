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
	Page<Board> selectPage();
	Board		selectByBno(Integer key);
	 
	int insertBoard(Board board);
	int updateBoard(Board board);
	int delete(Integer bno);


}
