package com.bidbid.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberViewController {
    @GetMapping("signup")
    public String signup() {
        return "signup";
    }
}
