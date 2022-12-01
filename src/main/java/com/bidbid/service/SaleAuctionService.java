package com.bidbid.service;

import com.bidbid.dto.saleauction.RenewalBidRequest;
import com.bidbid.dto.saleauction.SaleAuctionRequest;
import com.bidbid.entity.Member;
import com.bidbid.entity.saleauction.SaleAuction;
import com.bidbid.repository.SaleAuctionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import javax.transaction.Transactional;
import java.security.Principal;

@Service
@RequiredArgsConstructor
public class SaleAuctionService {
    private final SaleAuctionRepository saleAuctionRepository;
    private final MemberService memberService;

    @Transactional
    public SaleAuction create(SaleAuctionRequest dto, Principal principal) {
        SaleAuction saleAuction = dto.toEntity();
        saleAuction.setSeller(memberService.getLoginMember(principal));

        return saleAuctionRepository.save(dto.toEntity());
    }

    @Transactional
    public void renewalBid(Long id, RenewalBidRequest dto, Member buyer) {
        SaleAuction saleAuction = saleAuctionRepository.findById(id).orElseThrow(EntityNotFoundException::new);
        buyer.usePoint(dto.getPoint());
        saleAuction.setBestBuyer(buyer);
    }

}
