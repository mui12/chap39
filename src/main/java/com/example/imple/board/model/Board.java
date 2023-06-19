package com.example.imple.board.model;

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
	
	@NonNull Long    num;
	@NonNull String	 id;
	@NonNull String  pwd;
			 String  email;
	@NonNull String  subject;
	@NonNull String  content;
			 String  created;
			 Long    hitcount;

}
