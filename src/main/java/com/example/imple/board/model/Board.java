package com.example.imple.board.model;

import java.time.LocalDate;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class Board {
	
			 Integer    bno;
	@NonNull String	    id;
	@NonNull String     pwd;
			 String     email;
	@NonNull String     subject;
	@NonNull String     content;
			 LocalDate  created;
			 Integer    hitcount;

}
