package com.bidbid.repository;

import com.bidbid.entity.Member;
import com.bidbid.entity.saleauction.SaleAuction;
import com.bidbid.global.ProductCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SaleAuctionRepository extends JpaRepository<SaleAuction, Long> {
    List<SaleAuction> findAllByProductCategory(ProductCategory category);

    List<SaleAuction> findAllBySeller(Member seller);
    List<SaleAuction> findAllByProductCategoryAndProductNameContaining(ProductCategory category, String productName);
    List<SaleAuction> findAllByProductNameContaining(String productName);
}
