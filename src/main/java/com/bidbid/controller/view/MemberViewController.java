package com.bidbid.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MemberViewController {
    @GetMapping("signup")
    public String signup() {
        return "member/signup-form";
    }

    @GetMapping("charge-point")
    public String chargePoint() {
        return "member/charge-point-form";
    }
}
