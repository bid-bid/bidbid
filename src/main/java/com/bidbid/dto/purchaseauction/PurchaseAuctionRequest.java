package com.bidbid.dto.purchaseauction;

import com.bidbid.entity.purchaseauction.PurchaseAuction;
import com.bidbid.global.ProductCategory;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class PurchaseAuctionRequest {
    private String auctionTitle;
    private String productName;
    private String description;
    private String category;

    public PurchaseAuction toEntity() {
        return PurchaseAuction.builder()
                .auctionTitle(auctionTitle)
                .productName(productName)
                .description(description)
                .productCategory(ProductCategory.valueOf(category))
                .build();
    }
}
