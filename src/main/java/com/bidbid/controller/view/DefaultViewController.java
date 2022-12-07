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

    @GetMapping("purchase-search")
    public String search() {
        return "purchase-search";
    }

    @GetMapping("item-info")
    public String itemInfo() {
        return "itemInfo";
    }

    @GetMapping("sale-form")
    public String saleForm() {
        return "sale-auction/sale-form";
    }

    @GetMapping("purchase-form")
    public String purchaseForm() {
        return "purchase-auction/purchase-form";
    }

}
