package com.bidbid.entity.purchaseauction;

import com.bidbid.dto.purchaseauction.PurchaseAuctionParticipationRequest;
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
    @Getter
    DecisionState decisionState = DecisionState.UNIDENTIFIED;

    @Builder
    public PurchaseAuctionParticipation(String description, Integer price) {
        this.description = description;
        this.price = price;
    }

    public void modify(PurchaseAuctionParticipationRequest dto) {
        description = dto.getDescription();
        price = dto.getPrice();
        decisionState = DecisionState.UNIDENTIFIED;
    }

    public void bestPick() {
        decisionState = DecisionState.SELECTION;
    }

    public void dismiss() {
        decisionState = DecisionState.DISMISSAL;
    }
}
