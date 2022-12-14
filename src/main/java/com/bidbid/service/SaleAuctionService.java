package com.bidbid.service;

import com.bidbid.dto.saleauction.RenewalBidRequest;
import com.bidbid.dto.saleauction.SaleAuctionRequest;
import com.bidbid.entity.Member;
import com.bidbid.entity.saleauction.SaleAuction;
import com.bidbid.global.ProductCategory;
import com.bidbid.repository.SaleAuctionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import javax.transaction.Transactional;
import java.security.Principal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class SaleAuctionService {
    private final SaleAuctionRepository saleAuctionRepository;
    private final MemberService memberService;

    @Transactional
    public SaleAuction create(SaleAuctionRequest dto, Principal principal) {
        SaleAuction saleAuction = dto.toEntity();
        saleAuction.setSeller(memberService.getLoginMember(principal));

        return saleAuctionRepository.save(saleAuction);
    }

    public SaleAuction findById(Long id) {
        return saleAuctionRepository.findById(id)
                .orElseThrow(EntityNotFoundException::new);
    }

    public List<SaleAuction> findAll() {
        return saleAuctionRepository.findAll(Sort.by(Sort.Direction.DESC, "auctionDeadline"));
    }

    public List<SaleAuction> findAllByCategory(ProductCategory category) {
        return saleAuctionRepository.findAllByProductCategory(category);
    }

    public List<SaleAuction> findAllBySeller(Principal principal) {
        Member loginMember = memberService.getLoginMember(principal);
        return saleAuctionRepository.findAllBySeller(loginMember);
    }

    @Transactional
    public void renewalBid(Long id, RenewalBidRequest dto, Principal principal) {
        SaleAuction saleAuction = findById(id);
        Member buyer = memberService.getLoginMember(principal);
        saleAuction.renewalBid(buyer, dto.getPoint());
    }

}
