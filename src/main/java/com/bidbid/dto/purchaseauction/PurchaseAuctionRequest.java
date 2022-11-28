package com.bidbid.dto.purchaseauction;

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
    private LocalDateTime deadline;
}
