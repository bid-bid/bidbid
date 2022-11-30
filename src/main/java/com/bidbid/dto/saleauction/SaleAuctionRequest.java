package com.bidbid.dto.saleauction;

import com.bidbid.entity.saleauction.SaleAuction;
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
    private Integer startPrice;

    public SaleAuction toEntity() {
        return SaleAuction.builder()
                .productName(productName)
                .description(description)
                .price(startPrice)
                .build();

    }
}
