package com.bidbid.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthViewController {

    @GetMapping("login")
    public String login() {
        return "auth/login-form";
    }
}
