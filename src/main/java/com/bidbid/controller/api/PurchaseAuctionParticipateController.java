package com.bidbid.controller.api;

import com.bidbid.service.PurchaseAuctionParticipationService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.security.Principal;

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
    public String getByPurchaseId(@PathVariable Long purchaseId, Model model, Principal principal) {
        if (purchaseAuctionParticipationService.isSeller(purchaseId, principal)) {
            model.addAttribute("purchaseAuctionParticipations",
                    purchaseAuctionParticipationService.findAllByPurchaseAuctionId(purchaseId));
        } else {
            model.addAttribute("purchaseAuctionParticipation",
                    purchaseAuctionParticipationService.findByPurchaseAuctionIdAndLoginMember(purchaseId, principal));
        }

        return "";
    }

    @PostMapping("{id}/dismiss")
    public String dismiss(@PathVariable Long id) {
        purchaseAuctionParticipationService.dissmiss(id);

        throw new UnsupportedOperationException();
    }

    @PostMapping("{id}/best-pick")
    public String bestPick(@PathVariable Long id) {
        purchaseAuctionParticipationService.bestPick(id);

        return "redirect:/api/purchase-auction";
    }
    //
}
