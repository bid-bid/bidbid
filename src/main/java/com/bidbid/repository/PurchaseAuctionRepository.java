package com.bidbid.repository;

import com.bidbid.entity.Member;
import com.bidbid.entity.purchaseauction.PurchaseAuction;
import com.bidbid.global.ProductCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PurchaseAuctionRepository extends JpaRepository<PurchaseAuction, Long> {
    List<PurchaseAuction> findAllByProductCategory(ProductCategory category);

    List<PurchaseAuction> findAllByBuyer(Member loginMember);
}
