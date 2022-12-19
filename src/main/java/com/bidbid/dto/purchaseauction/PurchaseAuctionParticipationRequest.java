package com.bidbid.dto.purchaseauction;

import com.bidbid.entity.purchaseauction.PurchaseAuctionParticipation;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class PurchaseAuctionParticipationRequest {
    private String description;
    private Integer price;
    private Long purchaseAuctionId;

    public PurchaseAuctionParticipation toEntity() {
        return new PurchaseAuctionParticipation(description, price);
    }
}
