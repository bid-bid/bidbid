package com.bidbid.controller.api;

import com.bidbid.dto.member.LoginRequest;
import com.bidbid.service.AuthService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("api/auth")
@RequiredArgsConstructor
public class AuthController {

    private final AuthService authService;

    @PostMapping("login")
    public String login(LoginRequest dto) {
        authService.login(dto);
        return "redirect:/";
    }

    @PostMapping("logout")
    public String logout() {
        return "redirect:/";
    }
}
