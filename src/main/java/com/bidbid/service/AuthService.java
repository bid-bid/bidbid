package com.bidbid.service;

import com.bidbid.config.security.PrincipalDetails;
import com.bidbid.dto.member.LoginRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthService {
    private final AuthenticationManager authenticationManager;

    public String login(LoginRequest dto) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(dto.getEmail(), dto.getPassword()));

        SecurityContextHolder.getContext().setAuthentication(authentication);

        PrincipalDetails principal = (PrincipalDetails) authentication.getPrincipal();
        return principal.getUsername();
    }

}
