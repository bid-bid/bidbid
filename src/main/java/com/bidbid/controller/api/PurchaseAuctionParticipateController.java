package com.bidbid.controller.api;

import com.bidbid.dto.purchaseauction.PurchaseAuctionParticipationRequest;
import com.bidbid.dto.purchaseauction.UpdatePapRequest;
import com.bidbid.service.PurchaseAuctionParticipationService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.security.Principal;

@Controller
@RequestMapping("api/purchase-auction-participation")
@RequiredArgsConstructor
public class PurchaseAuctionParticipateController {
    private final PurchaseAuctionParticipationService purchaseAuctionParticipationService;

    @PostMapping
    public String create(PurchaseAuctionParticipationRequest dto, MultipartFile multipartFile, Principal principal) {
        purchaseAuctionParticipationService.save(dto, multipartFile, principal);

        return "redirect:/api/purchase-auction/" + dto.getPurchaseAuctionId();
    }

    @GetMapping("{purchaseId}")
    public String getByPurchaseId(@PathVariable Long purchaseId, Model model, Principal principal) {
        if (purchaseAuctionParticipationService.isSeller(purchaseId, principal)) {
            model.addAttribute("purchaseAuctionParticipation",
                    purchaseAuctionParticipationService.findAllByPurchaseAuctionId(purchaseId));
        } else {
            model.addAttribute("purchaseAuctionParticipation",
                    purchaseAuctionParticipationService.findByPurchaseAuctionIdAndLoginMember(purchaseId, principal));
        }

        return "";
    }

    @PostMapping("{id}/update")
    public String update(@PathVariable Long id, UpdatePapRequest dto , Model model, MultipartFile image) {
        purchaseAuctionParticipationService.update(id, dto, image);

        return "redirect:/api/purchase-auction";
    }

    @PostMapping("{id}/dismiss")
    public String dismiss(@PathVariable Long id) {
        purchaseAuctionParticipationService.dismiss(id);

        return "redirect:/api/purchase-auction/" + purchaseAuctionParticipationService.getOne(id).getPurchaseAuction().getId();
    }

    @PostMapping("{id}/best-pick")
    public String bestPick(@PathVariable Long id) {
        purchaseAuctionParticipationService.bestPick(id);

        return "redirect:/api/purchase-auction/" + purchaseAuctionParticipationService.getOne(id).getPurchaseAuction().getId();
    }
    //
}
