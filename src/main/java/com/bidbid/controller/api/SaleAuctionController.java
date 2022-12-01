package com.bidbid.controller.api;

import com.bidbid.dto.saleauction.RenewalBidRequest;
import com.bidbid.dto.saleauction.SaleAuctionRequest;
import com.bidbid.service.SaleAuctionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@Controller
@RequestMapping("/api/sale-auction")
@RequiredArgsConstructor
public class SaleAuctionController {

    private final SaleAuctionService saleAuctionService;

    @PostMapping
    public String create(SaleAuctionRequest dto, Principal principal) {
        saleAuctionService.create(dto, principal);

        return "redirect:/";
    }

    @GetMapping
    public String getAll(Model model) {
        model.addAttribute("saleAuctions", saleAuctionService);
        throw new UnsupportedOperationException();
    }

    @GetMapping("{id}")
    public String getById(@PathVariable Long id) {
        throw new UnsupportedOperationException();
    }

    @PostMapping("{id}/renewal-bid")
    public String renewalBid(@RequestBody RenewalBidRequest dto, @PathVariable Long id) {

        throw new UnsupportedOperationException();
    }

    @PostMapping("{id}/delete")
    public String delete(@PathVariable Long id) {
        throw new UnsupportedOperationException();
    }
}
