
package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {
	
	@Autowired
	UserDetailsService userDetailsService;
	
	@Bean
	PasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean  
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
		http.csrf(csrf -> {			
			csrf.disable();
		});
		http.cors(cors -> {
			cors.disable();
		});
		
		http.authorizeHttpRequests(request -> {    
			request.dispatcherTypeMatchers(jakarta.servlet.DispatcherType.FORWARD).permitAll();
			request.requestMatchers("/", "/error").permitAll();   
			request.requestMatchers("/webjars/**").permitAll();     
			request.requestMatchers("/img/**","jsp/img/**" ).permitAll();     
			
			request.requestMatchers("/user/joinagree/**").permitAll();   
			request.requestMatchers("/user/create/**").permitAll();   
			request.requestMatchers("/user/success/**").permitAll();   
			
			request.requestMatchers("/board/list", "board/page").permitAll();   
			request.requestMatchers("/information/**").permitAll();   
			
			
			
			request.anyRequest().anonymous();  
//			request.anyRequest().authenticated();  
		});
		
		http.formLogin(login -> {
			login.loginPage("/user/login");
			
			/* 로그인 성공 처리 with UserLoginController*/
			login.defaultSuccessUrl("/", true); // 로그인이 성공하면 항상(true) "/"루트로 가라 
			
			/* 실패시 에러 처리 with UserLoginController*/
			login.failureHandler((request, response, e) -> {
				request.setAttribute("exception", e);
				request.getRequestDispatcher("/user/login-fail").forward(request, response);
				
				/* 실패하면 e가 exception이름으로 /user/login-fail로 forward되는데 
				   controller에서 fail로 post로 받아서 login으로 리턴하게 된다. */
				
				
			});
			
			login.permitAll();
		});
	
		http.logout(logout -> {
			logout.logoutUrl("/user/logout");
			logout.permitAll();
		});
		
		http.rememberMe(remember -> {
			remember.alwaysRemember(false);
			remember.rememberMeParameter("remember-me");
			remember.tokenValiditySeconds(60*60*24);
			remember.userDetailsService(userDetailsService);
			
		});
		
		return http.build();
	}
}
