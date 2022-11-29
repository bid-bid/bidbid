package com.bidbid.controller.api;

import com.bidbid.dto.purchaseauction.PurchaseAuctionRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
@RequestMapping("api/purchase-auction")
public class PurchaseAuctionController {

    @PostMapping
    public String create(PurchaseAuctionRequest dto, Principal principal) {
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
