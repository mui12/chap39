package com.example.imple.board.model;

import java.sql.Date;

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
	
	@NonNull Integer num;
	@NonNull String  id;
			 String  subject;
			 String  content;
			 String  bfile;
			 Integer reRef;
			 Integer reLev;
			 Integer reSeq;
			 Integer readcount;
			 Date	 ddate;
	
	
	
}
