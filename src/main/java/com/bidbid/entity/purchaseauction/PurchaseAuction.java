package com.bidbid.entity.purchaseauction;

import com.bidbid.entity.Member;
import com.bidbid.global.BaseTime;
import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class PurchaseAuction {

    @Id
    @GeneratedValue
    private Long id;

    private String productName;

    private String description;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "buyer_id")
    private Member buyer;

    @Column(nullable = false)
    private LocalDateTime auctionDeadline;

    @Embedded
    private BaseTime baseTime;

    public Member getBuyer() {
        return buyer;
    }
}
