package com.bidbid.dto.purchaseauction;

import com.bidbid.entity.purchaseauction.PurchaseAuction;
import com.bidbid.global.ProductCategory;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class PurchaseAuctionRequest {
    private String productName;
    private String description;
    private Integer startPrice;
    private String category;
    private LocalDateTime deadline;

    public PurchaseAuction toEntity() {
        return PurchaseAuction.builder()
                .productName(productName)
                .description(description)
                .productCategory(ProductCategory.valueOf(category))
                .deadline(deadline)
                .build();
    }
}
