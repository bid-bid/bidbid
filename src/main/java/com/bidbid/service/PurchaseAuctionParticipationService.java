package com.bidbid.service;

import com.bidbid.dto.purchaseauction.PurchaseAuctionParticipationRequest;
import com.bidbid.entity.purchaseauction.PurchaseAuctionParticipation;
import com.bidbid.repository.PurchaseAuctionParticipationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import java.security.Principal;

@Service
@RequiredArgsConstructor
public class PurchaseAuctionParticipationService {

    private final MemberService memberService;
    private final ImageService imageService;
    private final PurchaseAuctionParticipationRepository purchaseAuctionParticipationRepository;

    @Transactional
    public void save(PurchaseAuctionParticipationRequest dto, Long purchaseId, MultipartFile multipartFile, Principal principal) {
        PurchaseAuctionParticipation purchaseAuctionParticipation = dto.toEntity();
        purchaseAuctionParticipation.setSeller(memberService.getLoginMember(principal));
        purchaseAuctionParticipation.setImage(imageService.save(multipartFile));
        purchaseAuctionParticipationRepository.save(purchaseAuctionParticipation);
    }

    public PurchaseAuctionParticipation findByPurchaseAuctionIdAndLoginMember(Long purchaseAuctionId, Principal principal) {

    }
}
