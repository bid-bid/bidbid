package com.bidbid.controller.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("api/auth")
public class AuthController {

    @PostMapping("login")
    public String login() {
        return "redirect:/";
    }

    @PostMapping("logout")
    public String logout() {
        return "redirect:/";
    }
}
