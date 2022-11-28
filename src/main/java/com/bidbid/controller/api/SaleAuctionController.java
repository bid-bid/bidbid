package com.bidbid.controller.api;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

//@Controller
@RequestMapping("/api/sale-auction")
public class SaleAuctionController {

    @PostMapping
    public String create() {
        throw new UnsupportedOperationException("Not supported yet");
    }

    @GetMapping
    public String getAll() {
        throw new UnsupportedOperationException();
    }

    @GetMapping("{id}")
    public String getById(@PathVariable Long id) {
        throw new UnsupportedOperationException();
    }

    @PostMapping("{id}/allow")
    public String allow(@PathVariable Long id) {
        throw new UnsupportedOperationException();
    }

    @PostMapping("{id}/delete")
    public String delete(@PathVariable Long id) {
        throw new UnsupportedOperationException();
    }
}
