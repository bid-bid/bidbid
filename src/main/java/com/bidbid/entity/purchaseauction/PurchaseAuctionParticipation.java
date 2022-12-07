package com.bidbid.entity.purchaseauction;

import com.bidbid.entity.Member;
import lombok.*;

import javax.persistence.*;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class PurchaseAuctionParticipation {
    @Id
    @GeneratedValue
    private Long id;


    @Setter
    private String image;

    private String description;

    private Integer price;

    @Setter
    @ManyToOne
    @JoinColumn(name = "seller_id")
    private Member seller;

    @Setter
    @OneToOne
    @JoinColumn(name = "purchase_auction_id")
    private PurchaseAuction purchaseAuction;

    @Enumerated(EnumType.STRING)
    DecisionState decisionState = DecisionState.UNIDENTIFIED;

    @Builder
    public PurchaseAuctionParticipation(String description, Integer price) {
        this.description = description;
        this.price = price;
    }
}
