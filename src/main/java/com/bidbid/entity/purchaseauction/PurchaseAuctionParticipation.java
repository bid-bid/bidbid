package com.bidbid.entity.purchaseauction;

import com.bidbid.entity.Member;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class PurchaseAuctionParticipation {
    @Id
    @GeneratedValue
    private Long id;

    private String image;

    private String description;

    private Integer price;

    @ManyToOne
    @JoinColumn(name = "seller_id")
    private Member seller;

    private boolean isBestPick = false;

    public Member getSeller() {
        return seller;
    }

    public void setSeller(Member seller) {
        this.seller = seller;
    }
}
