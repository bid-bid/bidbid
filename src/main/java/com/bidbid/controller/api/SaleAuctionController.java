package com.bidbid.controller.api;

import com.bidbid.dto.saleauction.RenewalBidRequest;
import com.bidbid.dto.saleauction.SaleAuctionRequest;
import com.bidbid.entity.saleauction.SaleAuction;
import com.bidbid.global.ProductCategory;
import com.bidbid.service.SaleAuctionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.security.Principal;

@Controller
@RequestMapping("/api/sale-auction")
@RequiredArgsConstructor
public class SaleAuctionController {

    private final SaleAuctionService saleAuctionService;

    @PostMapping
    public String create(SaleAuctionRequest dto, Principal principal,  MultipartFile image) {
        saleAuctionService.create(dto, image, principal);

        return "redirect:/api/sale-auction";
    }

    @GetMapping
    public String getAll(Model model) {
        model.addAttribute("saleAuctions", saleAuctionService.findAll());

        return "sale-auction/sale-ongoing-list";
    }

    @GetMapping(params = "filter=member")
    public String getAllByMember(Principal principal, Model model) {
        model.addAttribute("saleAuctions", saleAuctionService.findAllBySeller(principal));

        return "sale-auction/sale-ongoing-list";
    }

    @GetMapping(params = "filter=category")
    public String getAllByCategory(@RequestParam("category") ProductCategory category,
                                   @RequestParam("product-name")String productName, Model model) {
        if(category.equals(ProductCategory.NONE)) {
            model.addAttribute("saleAuctions", saleAuctionService.findAllByProductName(productName));
        }else if(productName.isBlank()) {
            model.addAttribute("saleAuctions", saleAuctionService.findAllByCategory(category));
        }else {
            model.addAttribute("saleAuctions", saleAuctionService.findAllByCategoryAndProductName(category, productName));
        }

        return "sale-auction/sale-ongoing-list";
    }


    @GetMapping("{id}")
    public String getById(@PathVariable Long id, Model model) {
        SaleAuction saleAuction = saleAuctionService.findById(id);
        model.addAttribute("saleAuction", saleAuction);

        return "sale-auction/sale-auction-info";
    }

    @PostMapping("{id}/renewal-bid")
    public String renewalBid(RenewalBidRequest dto, @PathVariable Long id, Principal principal) {
        saleAuctionService.renewalBid(id, dto, principal);
        return "redirect:/api/sale-auction/" + id;
    }

    @GetMapping("/history/bid")
    public String getHistory(Principal principal, Model model) {
        model.addAttribute("saleAuctions", saleAuctionService.findByBestBuyer(principal));
        return "member/sale-history";
    }

    @GetMapping("/history/post")
    public String getPost(Principal principal, Model model) {
        model.addAttribute("saleAuctions", saleAuctionService.findAllBySeller(principal));
        return "member/sale-history";
    }

}
