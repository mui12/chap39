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
	BoardMapper mapper;
	
	@Autowired
	ObjectMapper objectMapper;
	
	
	@Test
	void countAll() {
		int cnt = mapper.countAll();
		System.out.println("cnt = " + cnt);
		assertThat(cnt).isSameAs(5);
	}
	
	@Test
	void selectAll() {
		var list = mapper.selectAll();
		System.out.println(list);
	}
	
	@Test
	void selectByBno() {
		var board = mapper.selectByBno(5);
		System.out.println(board);
	}
	
	
	
}
