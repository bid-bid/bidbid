package com.bidbid.controller.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("api/admin")
public class AdminController {

    @GetMapping
    public String getMembers() {
        return "index";
    }

    @GetMapping
    public String getSaleAuctions() {
        return "index";
    }

    @GetMapping
    public String getPurchaseAuctions() {
        return "index";
    }
}
