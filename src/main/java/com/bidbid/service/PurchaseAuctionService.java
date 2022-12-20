package com.bidbid.service;

import com.bidbid.dto.purchaseauction.PurchaseAuctionRequest;
import com.bidbid.entity.Member;
import com.bidbid.entity.purchaseauction.PurchaseAuction;
import com.bidbid.entity.purchaseauction.PurchaseAuctionParticipation;
import com.bidbid.global.ProductCategory;
import com.bidbid.repository.PurchaseAuctionParticipationRepository;
import com.bidbid.repository.PurchaseAuctionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import javax.transaction.Transactional;
import java.security.Principal;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

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

    public List<PurchaseAuction> findAllByCategoryAndProductName(ProductCategory category, String productName) {
        return purchaseAuctionRepository.findAllByProductCategoryAndProductNameContaining(category, productName);
    }

    public List<PurchaseAuction> findAllByProductName(String productName) {
        return purchaseAuctionRepository.findAllByProductNameContaining(productName);
    }

    public List<PurchaseAuction> findAll() {
        return purchaseAuctionRepository.findAll(Sort.by(Sort.Direction.DESC, "deadline"));
    }

    public boolean isBuyer(Long id, Principal principal) {
        Member loginMember = memberService.getLoginMember(principal);
        PurchaseAuction purchaseAuction = findById(id);
        return purchaseAuction.getBuyer() == loginMember;
    }

    public List<PurchaseAuction> findByBestPick(Principal principal) {
        Member member = memberService.getLoginMember(principal);
        List<PurchaseAuction> purchaseAuctionList = new ArrayList<>();
        purchaseAuctionParticipationRepository.findAllBySeller(member).stream()
                .map(purchaseAuctionRepository::findAllByBestPick)
                .filter(list -> list.stream().filter(purchaseAuction -> purchaseAuction.getDeadline().isAfter(LocalDateTime.now())).isParallel())
                .forEach(list -> list.stream().forEach(purchaseAuctionList::add));
        return purchaseAuctionList;
    }

    public List<PurchaseAuctionParticipation> findReturnedSuggest(Principal principal) {
        Member member = memberService.getLoginMember(principal);
        return purchaseAuctionParticipationRepository.findAllBySeller(member).stream()
                .filter(purchaseAuctionParticipation ->
                        purchaseAuctionParticipation.getSeller() != null &&
                                purchaseAuctionParticipation.getPurchaseAuction().getBestPick() != null &&
                        !purchaseAuctionParticipation.getSeller().getEmail()
                                .equals(purchaseAuctionParticipation.getPurchaseAuction().getBestPick().getSeller().getEmail()))
                .collect(Collectors.toList());
    }

}
