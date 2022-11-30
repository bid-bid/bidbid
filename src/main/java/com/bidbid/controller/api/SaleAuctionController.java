package com.bidbid.controller.api;

import com.bidbid.dto.saleauction.SaleAuctionRequest;
import com.bidbid.service.SaleAuctionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

@Controller
@RequestMapping("/api/sale-auction")
@RequiredArgsConstructor
public class SaleAuctionController {

    private final SaleAuctionService saleAuctionService;

    @PostMapping
    public String create(SaleAuctionRequest dto, Principal principal) {
        auctionService.create(dto, principal);

        return "redirect:/";
    }

    @GetMapping
    public String getAll(Model model) {
        model.addAttribute("saleAuctions", auctionService);
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
