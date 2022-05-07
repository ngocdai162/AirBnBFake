package WebApplication.AirBnb.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import WebApplication.AirBnb.service.impl.AccountServiceImpl;

@Configuration
public class SpringSecurityConfiguration  {

	@Autowired
	AccountServiceImpl accountService;
	
	
	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
//	@Override
//	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
//		auth.userDetailsService(userDetailsService)
//		.passwordEncoder(passwordEncoder());
//	}
//
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		http.formLogin().loginPage("/trang-chu")
//		.usernameParameter("mail")
//		.passwordParameter("password");
//		
//		
//	}
//
//	@Override
//	public void configure(WebSecurity web) throws Exception {
//		
//	}
}
