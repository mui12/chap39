package com.example.imple.user.model;

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
public class User { 
	
	@NonNull String  id;
	@NonNull String  password;
			 String  name;
			 String  dob;
			 Integer phone;
			 String  email;
			 String  role;


}