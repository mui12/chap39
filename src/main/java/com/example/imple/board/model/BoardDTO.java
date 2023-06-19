package com.example.imple.board.model;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.PastOrPresent;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class BoardDTO {
	
	@NotNull
	@Range(min = 1, max = 99999999999L)
	Long    num;
	
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
	String  created;
	
	@Range(min = 1, max = 99999999999L)
	Long hitcount;

}
