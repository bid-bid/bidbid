package com.bidbid.repository;

import com.bidbid.entity.saleauction.SaleAuction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SaleAuctionRepository extends JpaRepository<SaleAuction, Long> {

}
