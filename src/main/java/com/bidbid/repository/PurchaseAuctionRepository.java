package com.bidbid.repository;

import com.bidbid.entity.purchaseauction.PurchaseAuction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PurchaseAuctionRepository extends JpaRepository<PurchaseAuction, Long> {
}
