package com.bidbid.service;

import com.bidbid.dto.purchaseauction.PurchaseAuctionRequest;
import com.bidbid.entity.Member;
import com.bidbid.entity.purchaseauction.PurchaseAuction;
import com.bidbid.global.ProductCategory;
import com.bidbid.repository.PurchaseAuctionParticipationRepository;
import com.bidbid.repository.PurchaseAuctionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import javax.transaction.Transactional;
import java.security.Principal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class PurchaseAuctionService {
    private final PurchaseAuctionRepository purchaseAuctionRepository;
    private final PurchaseAuctionParticipationRepository purchaseAuctionParticipationRepository;
    private final MemberService memberService;

    @Transactional
    public void create(PurchaseAuctionRequest dto, Principal principal) {
        PurchaseAuction purchaseAuction = dto.toEntity();
        purchaseAuction.setBuyer(memberService.getLoginMember(principal));
        purchaseAuctionRepository.save(purchaseAuction);
    }

    public PurchaseAuction findById(Long id) {
        return purchaseAuctionRepository.findById(id)
                .orElseThrow(EntityNotFoundException::new);
    }

    public List<PurchaseAuction> findByBuyer(Principal principal) {
        Member loginMember = memberService.getLoginMember(principal);

        return purchaseAuctionRepository.findAllByBuyer(loginMember);
    }

    public List<PurchaseAuction> findAllByCategory(ProductCategory category) {
        return purchaseAuctionRepository.findAllByProductCategory(category);
    }

    public List<PurchaseAuction> findAll() {
        return purchaseAuctionRepository.findAll(Sort.by(Sort.Direction.DESC, "auctionDeadline"));
    }

    public void setBestPick(Long auctionId, Long participationId) {
        PurchaseAuction purchaseAuction = findById(auctionId);
    }
}
