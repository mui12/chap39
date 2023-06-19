package com.example.imple.boardmapper;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.imple.board.mapper.BoardMapper;
import com.fasterxml.jackson.databind.ObjectMapper;

@SpringBootTest
public class BoardMapperTest {

	@Autowired
	BoardMapper boardMapper;
	
	@Autowired
	ObjectMapper objectMapper;
	
	
	@Test
	void selectAll() {
		var count = boardMapper.selectAll();
		System.out.println("count ="+count);
	}
	
	@Test
	void selectBynum() {
		var board = boardMapper.selectBynum(1);
		System.out.println(board);
	}
	
	
	
}
