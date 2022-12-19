package com.bidbid.controller;

import com.bidbid.dto.member.SignupRequest;
import com.bidbid.service.MemberService;
import com.bidbid.service.PurchaseAuctionService;
import com.bidbid.service.SaleAuctionService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("test")
@RequiredArgsConstructor
public class TestController {

    private final MemberService memberService;
    private final PurchaseAuctionService purchaseAuctionService;
    private final SaleAuctionService saleAuctionService;

    @GetMapping("input-all")
    public String inputAll() {
        List<SignupRequest> signupRequests = List.of(
                new SignupRequest("a@a.com", "a", "a"),
                new SignupRequest("b@b.com", "b", "b"),
                new SignupRequest("c@c.com", "c", "c"),
                new SignupRequest("d@d.com", "d", "d"),
                new SignupRequest("e@e.com", "e", "e"),
                new SignupRequest("f@f.com", "f", "f"),
                new SignupRequest("g@g.com", "g", "g"),
                new SignupRequest("h@h.com", "h", "h"));
       /* List<SaleAuctionRequest> saleAuctionRequests = List.of(
               new SaleAuctionRequest("product1", "description", "DIGITAL", 1000),
               new SaleAuctionRequest("product2", "description", "DIGITAL", 1000),
               new SaleAuctionRequest("product3", "description", "DIGITAL", 1000),
               new SaleAuctionRequest("product4", "description", "DIGITAL", 1000),
               new SaleAuctionRequest("product5", "description", "DIGITAL", 1000),
               new SaleAuctionRequest("product6", "description", "DIGITAL", 1000),
               new SaleAuctionRequest("product7", "description", "DIGITAL", 1000)
        );*/
        /*List<PurchaseAuctionRequest> purchaseAuctionRequests = List.of(
                new PurchaseAuctionRequest("title","product1", "description","DIGITAL"),
                new PurchaseAuctionRequest("title","product2", "description","DIGITAL"),
                new PurchaseAuctionRequest("title","product3", "description","DIGITAL"),
                new PurchaseAuctionRequest("title","product4", "description","DIGITAL"),
                new PurchaseAuctionRequest("title","product5", "description","DIGITAL")
        );*/

//        List<PurchaseAuctionParticipationRequest> purchaseAuctionParticipationRequests = List.of(
//                new PurchaseAuctionParticipationRequest("description1", 5000),
//                new PurchaseAuctionParticipationRequest("description2", 5000),
//                new PurchaseAuctionParticipationRequest("description3", 5000),
//                new PurchaseAuctionParticipationRequest("description4", 5000),
//                new PurchaseAuctionParticipationRequest("description5", 5000),
//                new PurchaseAuctionParticipationRequest("description6", 5000),
//                new PurchaseAuctionParticipationRequest("description7", 5000),
//                new PurchaseAuctionParticipationRequest("description8", 5000),
//                new PurchaseAuctionParticipationRequest("description9", 5000)
//        );
//        signupRequests.forEach(memberService::signup);
//        Principal principal = () -> "a@a.com";

       // saleAuctionRequests.forEach(s -> saleAuctionService.create(s, principal));
       // purchaseAuctionRequests.forEach(p -> purchaseAuctionService.create(p, principal));
        //purchaseAuctionParticipationRequests.forEach(pp -> purchaseAuctionService.setBestPick(2L, ) );


        return "home";
    }
}
