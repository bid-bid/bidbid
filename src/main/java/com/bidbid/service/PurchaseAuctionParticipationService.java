package com.bidbid.service;

import com.bidbid.dto.purchaseauction.PurchaseAuctionParticipationRequest;
import com.bidbid.entity.Member;
import com.bidbid.entity.purchaseauction.PurchaseAuction;
import com.bidbid.entity.purchaseauction.PurchaseAuctionParticipation;
import com.bidbid.repository.PurchaseAuctionParticipationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.EntityNotFoundException;
import javax.transaction.Transactional;
import java.security.Principal;
import java.util.List;
import java.util.Objects;

@Service
@RequiredArgsConstructor
public class PurchaseAuctionParticipationService {

    private final MemberService memberService;
    private final ImageService imageService;
    private final PurchaseAuctionService purchaseAuctionService;
    private final PurchaseAuctionParticipationRepository purchaseAuctionParticipationRepository;

    @Transactional
    public void save(PurchaseAuctionParticipationRequest dto, MultipartFile multipartFile, Principal principal) {
        PurchaseAuctionParticipation purchaseAuctionParticipation = dto.toEntity();
        purchaseAuctionParticipation.setPurchaseAuction(purchaseAuctionService.findById(dto.getPurchaseAuctionId()));
        purchaseAuctionParticipation.setSeller(memberService.getLoginMember(principal));
        if(multipartFile != null && !multipartFile.isEmpty()) {
            purchaseAuctionParticipation.setImage(imageService.save(multipartFile));
        }
        purchaseAuctionParticipationRepository.save(purchaseAuctionParticipation);
    }

    @Transactional
    public void modify(PurchaseAuctionParticipationRequest dto, Long id) {
        getOne(id).modify(dto);
    }

    @Transactional
    public void bestPick(Long id) {
        PurchaseAuctionParticipation purchaseAuctionParticipation = getOne(id);
        purchaseAuctionParticipation.bestPick();

        PurchaseAuction purchaseAuction = purchaseAuctionParticipation.getPurchaseAuction();
        purchaseAuction.getBestPick().dismiss();
        purchaseAuction.setBestPick(purchaseAuctionParticipation);
    }

    @Transactional
    public void setDismiss(Long id) {
        getOne(id).dismiss();
    }

    public boolean isSeller(Long id, Principal principal) {
        return Objects.equals(getOne(id).getSeller().getName(), principal.getName());
    }

    public List<PurchaseAuctionParticipation> findAllByPurchaseAuctionId(Long purchaseAuctionId) {
        PurchaseAuction purchaseAuction = purchaseAuctionService.findById(purchaseAuctionId);
        return purchaseAuctionParticipationRepository.findAllByPurchaseAuction(purchaseAuction);
    }

    public PurchaseAuctionParticipation findByPurchaseAuctionIdAndLoginMember(Long purchaseAuctionId, Principal principal) {
        PurchaseAuction purchaseAuction = purchaseAuctionService.findById(purchaseAuctionId);
        Member seller = memberService.getLoginMember(principal);

        return purchaseAuctionParticipationRepository
                .findByPurchaseAuctionAndSeller(purchaseAuction, seller)
                .orElseThrow(EntityNotFoundException::new);
    }

    private PurchaseAuctionParticipation getOne(Long id) {
        return purchaseAuctionParticipationRepository
                .findById(id)
                .orElseThrow(EntityNotFoundException::new);
    }

    public void dissmiss(Long id) {
    }
}
