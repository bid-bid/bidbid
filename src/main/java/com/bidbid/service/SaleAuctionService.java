package com.bidbid.service;

import com.bidbid.dto.saleauction.BidHigherRequest;
import com.bidbid.dto.saleauction.SaleAuctionRequest;
import com.bidbid.entity.Member;
import com.bidbid.entity.saleauction.SaleAuction;
import com.bidbid.repository.SaleAuctionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

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

    public void bidHigherPrice(BidHigherRequest dto, Member buyer) {
        throw new UnsupportedOperationException("Not supported yet");
    }

}
