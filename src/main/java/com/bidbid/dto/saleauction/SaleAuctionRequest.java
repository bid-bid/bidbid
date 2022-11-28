package com.bidbid.dto.saleauction;

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
}
