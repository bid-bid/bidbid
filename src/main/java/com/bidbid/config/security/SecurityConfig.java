package com.bidbid.config.security;


import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
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
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        return http.authorizeRequests()
                //not needs login
                .anyRequest().permitAll()
                // .antMatchers("/**").permitAll()
                //.antMatchers("**").permitAll()
                //has role "admin"
                //.antMatchers("/admin/**").hasRole("ADMIN")
                //needs login
                //.anyRequest().authenticated()
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
