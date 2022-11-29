package com.bidbid.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DefaultViewController {

    @GetMapping
    public String home() {
        return "home";
    }

    @GetMapping("category")
    public String category() {
        return "category";
    }

    @GetMapping("modify")
    public String modify() {
        return "modify";
    }

    @GetMapping("search")
    public String search() {
        return "search";
    }

    @GetMapping("item-info")
    public String itemInfo() {
        return "itemInfo";
    }
}
