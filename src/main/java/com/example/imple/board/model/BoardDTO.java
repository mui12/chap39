package com.example.imple.board.model;

import java.time.LocalDate;
import java.util.Date;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import com.example.standard.model.Modelable;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.PastOrPresent;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor(staticName = "of")   // 생성자
@NoArgsConstructor
@Builder
public class BoardDTO implements Modelable<Board> {
	
	@Range(min = 1, max = 99999999999L)
	Integer    bno;
	
	@NotBlank
	@Length(max = 15)
    String	 id;
	
	@NotBlank
	@Length(max = 10)
	String  pwd;
	
	@Length(max = 50)
	String  email;
	
	@Length(max = 50)
	String  subject;
	
	@Length(max = 4000)
	String  content;
	
	@PastOrPresent
	LocalDate  created;
	
	@Range(min = 1, max = 99999999999L)
	Integer hitcount;

	@Override
	public Board getModel() {
		return Board.builder()
					.bno(bno)
					.id(id.trim())
					.pwd(pwd.trim())
					.email(email.trim())
					.subject(subject)
					.content(content)
					.created(created)
					.hitcount(hitcount)
					.build();
	}

}
