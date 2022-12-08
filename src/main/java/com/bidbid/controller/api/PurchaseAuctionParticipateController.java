package com.bidbid.controller.api;

import com.bidbid.service.PurchaseAuctionParticipationService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("api/purchase-auction-participation")
@RequiredArgsConstructor
public class PurchaseAuctionParticipateController {
    private final PurchaseAuctionParticipationService purchaseAuctionParticipationService;

    @PostMapping
    public String create() {
        throw new UnsupportedOperationException("Not supported yet");
    }

    @GetMapping("{purchaseId}")
    public String getByPurchaseId(@PathVariable Long purchaseId) {

    }

    @GetMapping("{purchaseId}")
    public String
}
