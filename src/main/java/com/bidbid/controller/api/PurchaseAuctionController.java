package com.bidbid.controller.api;

import com.bidbid.dto.purchaseauction.PurchaseAuctionRequest;
import com.bidbid.global.ProductCategory;
import com.bidbid.service.PurchaseAuctionParticipationService;
import com.bidbid.service.PurchaseAuctionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@Controller
@RequestMapping("api/purchase-auction")
@RequiredArgsConstructor
public class PurchaseAuctionController {

    private final PurchaseAuctionService purchaseAuctionService;
    private final PurchaseAuctionParticipationService purchaseAuctionParticipationService;

    @PostMapping
    public String create(PurchaseAuctionRequest dto, Principal principal) {
        purchaseAuctionService.create(dto, principal);

        return "redirect:/api/purchase-auction";
    }

    @GetMapping
    public String getAll(Model model) {
        model.addAttribute("purchaseAuctions",
                purchaseAuctionService.findAll());

        return "purchase-auction/purchase-ongoing-list";
    }

    @GetMapping(params = "filter=member")
    public String getAllByMember(Principal principal, Model model) {
        model.addAttribute("purchaseAuctions",
                purchaseAuctionService.findByBuyer(principal));

        return "purchase-auction/purchase-ongoing-list";
    }

    @GetMapping(params = "filter=category")
    public String getAllByCategory(Principal principal, Model model, @RequestParam("product-name") String productName,
                                   @RequestParam("category") ProductCategory category) {
        if(category.equals(ProductCategory.NONE)) {
            model.addAttribute("purchaseAuctions", purchaseAuctionService.findAllByProductName(productName));
        } else if(productName.isBlank()) {
            model.addAttribute("purchaseAuctions", purchaseAuctionService.findAllByCategory(category));
        } else {
            model.addAttribute("purchaseAuctions", purchaseAuctionService.findAllByCategoryAndProductName(category, productName));
        }


        return "purchase-auction/purchase-ongoing-list";
    }



    @GetMapping("{id}")
    public String getById(@PathVariable Long id, Model model, Principal principal) {
        model.addAttribute("purchaseAuction", purchaseAuctionService.findById(id));
        if(purchaseAuctionService.isBuyer(id, principal)) {

        }else if(purchaseAuctionParticipationService.isSubmitted(id, principal)) {
            //PurchaseAuctionParticipation purchaseAuctionParticipation = PurchaseAuctionParticipationService.findByPurchaseAuctionIdAndLoginMember(id, principal);

        }else {

        }

        return "purchase-auction/purchase-auction-info";
    }



    @PostMapping("{id}/delete")
    public String delete(@PathVariable Long id) {
        throw new UnsupportedOperationException();
    }

    @GetMapping("/history/bid")
    public String getHistory(Principal principal, Model model) {
        model.addAttribute("purchaseAuctions", purchaseAuctionService.findByBestPick(principal));
        return "member/purchase-history";
    }

    @GetMapping("/history/post")
    public String getPost(Principal principal, Model model) {
        model.addAttribute("purchaseAuctions", purchaseAuctionService.findByBuyer(principal));
        model.addAttribute("purchaseAuctionParticipation", purchaseAuctionService.findReturnedSuggest(principal));
        return "member/purchase-history";
    }

}
