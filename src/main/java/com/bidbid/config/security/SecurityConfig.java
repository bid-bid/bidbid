package com.bidbid.config.security;


import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
public class SecurityConfig {

    private final UserDetailsService userDetailsService;
    private final AuthSuccessHandler authSuccessHandler;
    private final AuthFailureHandler authFailureHandler;

    @Bean
    public WebSecurityCustomizer configure() {
        return (web) -> web.ignoring().mvcMatchers(
                "/resources/**"
        );
    }


    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        return http
                .authorizeRequests()
                //not needs login
                .antMatchers("/").permitAll()
                .antMatchers("/login").permitAll()
                .antMatchers("item-info").permitAll()
                .antMatchers("/signup").permitAll()
                .antMatchers(HttpMethod.POST, "/api/members").permitAll()
                .antMatchers("/auth/login-form").permitAll()
                .antMatchers("/api/auth/login").permitAll()
                .antMatchers("/**").authenticated()
                .and()
                .formLogin().disable()
                .csrf().disable()
                .userDetailsService(userDetailsService)
                .formLogin()
                .loginPage("/login")
                .loginProcessingUrl("api/auth/login")
                .permitAll()
                .successHandler(authSuccessHandler)
                .failureHandler(authFailureHandler)
                .defaultSuccessUrl("/")
                .permitAll()
                .and()
                .httpBasic()
                .and()

                .logout()
                .logoutSuccessUrl("/")
                .and().build();
    }

    @Bean
    public AuthenticationManager authenticationManager(
            AuthenticationConfiguration authenticationConfiguration
    ) throws Exception {
        return authenticationConfiguration.getAuthenticationManager();
    }
}
