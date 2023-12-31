package com.naver.myhome;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import com.naver.security.CustomAccessDeniedHandler;
import com.naver.security.CustomUserDetailsService;
import com.naver.security.LoginFailHandler;
import com.naver.security.LoginSuccessHandler;

@EnableWebSecurity 
@Configuration
public class SecurityConfig {

	@Autowired
	private DataSource datasource;

	@Bean
	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

		http.authorizeRequests().antMatchers("/resources/**/**").permitAll()
		.antMatchers("/upload/**/**").permitAll()
		.antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')")
		.antMatchers("/member/login").permitAll()
		.antMatchers("/member/join").permitAll()
		.antMatchers("/member/idcheck").permitAll()
		.antMatchers("/member/joinProcess").permitAll()
		.antMatchers("/member/list").access("hasRole('ROLE_ADMIN')")
		.antMatchers("/member/list/").access("hasRole('ROLE_ADMIN')")
		.antMatchers("/member/info").access("hasRole('ROLE_ADMIN')")
		.antMatchers("/**").permitAll();

		http.formLogin().loginPage("/user/login")
		.loginProcessingUrl("/user/loginProcess")
		.usernameParameter("email")
		.passwordParameter("password")
		.successHandler(loginSuccessHandler())
		.failureHandler(loginFailHandler());

		http.logout().logoutSuccessUrl("/user/login")
		.logoutUrl("/user/logout")
		.invalidateHttpSession(true)
		.deleteCookies("remember-me","JSESSION_ID");


		http.rememberMe()
		.rememberMeParameter("remember-me")
		.userDetailsService(customUserService())
		.tokenValiditySeconds(2419200)
		.tokenRepository(tokenRepository());

		http.exceptionHandling().accessDeniedHandler(accessDeniedHandler());

		return http.build();
	}

	// 추가
	AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration)
			throws Exception {
		return authenticationConfiguration.getAuthenticationManager();
	}
	
	@Bean
	public AuthenticationSuccessHandler loginSuccessHandler() {
		return new LoginSuccessHandler();
	}

	@Bean
	public UserDetailsService customUserService() {
		return new CustomUserDetailsService();
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	public AccessDeniedHandler accessDeniedHandler() {
		return new CustomAccessDeniedHandler();
	}

	@Bean
	public AuthenticationFailureHandler loginFailHandler() {
		return new LoginFailHandler();
	}

	@Bean
	public PersistentTokenRepository tokenRepository() {
		JdbcTokenRepositoryImpl jdbcTokenRepository = new JdbcTokenRepositoryImpl();
		jdbcTokenRepository.setDataSource(datasource);
		return jdbcTokenRepository;
	}
}