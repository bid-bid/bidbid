package com.bidbid.repository;

import com.bidbid.entity.Member;
import com.bidbid.entity.purchaseauction.PurchaseAuction;
import com.bidbid.entity.purchaseauction.PurchaseAuctionParticipation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface PurchaseAuctionParticipationRepository extends JpaRepository<PurchaseAuctionParticipation, Long> {
    Optional<PurchaseAuctionParticipation> findByPurchaseAuctionAndSeller(PurchaseAuction purchaseAuction, Member seller);
    List<PurchaseAuctionParticipation> findAllByPurchaseAuction(PurchaseAuction purchaseAuction);
}
