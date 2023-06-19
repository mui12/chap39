package com.example.imple.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.imple.board.model.Board;
import com.github.pagehelper.Page;

@Mapper
public interface BoardMapper {
	
	int         countAll();
	List<Board> selectAll();
	
	
	List<Board> selectBoardsList();
	List<Board> selectAllWithCitys();
	Page<Board> selectPage();
	Page<Board> selectPageWithCitys();
	Board 	    selectByCode(String code);
	Board 	    selectByCodeWithCitys(String code);
	
	int insertCountry(Board board);
	int updateCountry(Board board);
	int delete(int id);


}
