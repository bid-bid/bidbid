package com.bidbid.dto.saleauction;

import com.bidbid.entity.saleauction.SaleAuction;
import com.bidbid.global.ProductCategory;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class SaleAuctionRequest {
    private String productName;
    private String description;

    private String category;
    private Integer startPrice;

    public SaleAuction toEntity() {
        return SaleAuction.builder()
                .productName(productName)
                .description(description)
                .productCategory(ProductCategory.valueOf(category))
                .price(startPrice)
                .build();

    }
}
