package com.bidbid.entity.purchaseauction;

import com.bidbid.entity.Member;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class PurchaseAuctionParticipation {
    @Id
    @GeneratedValue
    private Long id;

    private String image;

    private String description;

    private Integer price;

    @Setter
    @ManyToOne
    @JoinColumn(name = "seller_id")
    private Member seller;

    @Enumerated(EnumType.STRING)
    DecisionState decisionState;

}
