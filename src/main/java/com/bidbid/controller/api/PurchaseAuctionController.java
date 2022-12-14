package com.bidbid.controller.api;

import com.bidbid.dto.purchaseauction.PurchaseAuctionRequest;
import com.bidbid.global.ProductCategory;
import com.bidbid.service.PurchaseAuctionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.security.Principal;

@Controller
@RequestMapping("api/purchase-auction")
@RequiredArgsConstructor
public class PurchaseAuctionController {

    private final PurchaseAuctionService purchaseAuctionService;

    @PostMapping
    public String create(PurchaseAuctionRequest dto, Principal principal, MultipartFile image) {
        purchaseAuctionService.create(dto, principal);

        return "redirect:/api/purchase-auction";
    }

    @GetMapping
    public String getAll(Model model) {
        model.addAttribute("purchaseAuctions",
                purchaseAuctionService.findAll());

        return "purchase-auction/purchase-list";
    }

    @GetMapping(params = "filter=member")
    public String getAllByMember(Principal principal, Model model) {
        model.addAttribute("purchaseAuctions",
                purchaseAuctionService.findByBuyer(principal));

        return "purchase-auction/purchase-list";
    }

    @GetMapping(params = "filter=category")
    public String getAllByCategory(Principal principal, Model model,
                                   @RequestParam("category") ProductCategory category) {
        model.addAttribute("purchaseAuctions", purchaseAuctionService.findAllByCategory(category));

        return "purchase-auction/purchase-list";
    }


    @GetMapping("{id}")
    public String getById(@PathVariable Long id, Model model) {
        model.addAttribute("purchaseAuction", purchaseAuctionService.findById(id));

        return "purchase-auction/purchase-list";
    }



    @PostMapping("{id}/delete")
    public String delete(@PathVariable Long id) {
        throw new UnsupportedOperationException();
    }


}
