package com.example.imple.user.model;

import java.sql.Date;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import com.example.standard.model.Modelable;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;


@Data
@AllArgsConstructor(staticName = "of")
@NoArgsConstructor
@Builder
public class UserDTO implements Modelable<User> { 
	
	@NonNull 
	@Length(min = 5, max = 20)
	String  id;
	
	@NonNull
	@Length(min = 5, max = 20)
	String  password;

	
	String  name;
	
	@Length (max = 8)
	String    dob;
	
	@NonNull
	Integer phone;
	
	String  email;

	String  role;
		
			 
	@Override
	public User getModel() {
		return User.builder()
				   .id(id.trim())
				   .password(password.trim())
				   .name(name.trim())
				   .dob(dob)
				   .phone(phone)
				   .email(email.trim())
				   .role(role)
				   .build();
	}


}