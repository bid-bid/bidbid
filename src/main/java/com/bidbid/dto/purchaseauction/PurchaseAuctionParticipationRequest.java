package com.bidbid.dto.purchaseauction;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class PurchaseAuctionParticipationRequest {
    private String image;
    private String description;
    private Integer price;
}
