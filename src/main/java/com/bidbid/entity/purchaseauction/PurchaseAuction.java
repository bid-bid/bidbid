package com.bidbid.entity.purchaseauction;

import com.bidbid.entity.Member;
import com.bidbid.global.BaseTime;
import com.bidbid.global.ProductCategory;
import lombok.*;

import javax.persistence.*;
import java.time.LocalDateTime;

@Getter
@Entity
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class PurchaseAuction {

    @Id
    @GeneratedValue
    private Long id;

    private String auctionTitle;

    private String productName;

    private String description;

    @Enumerated(EnumType.STRING)
    private ProductCategory productCategory;

    @Setter
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "buyer_id")
    private Member buyer;

    @Setter
    @OneToOne
    @JoinColumn(name = "best_pick_id")
    private PurchaseAuctionParticipation bestPick;

    @Column(nullable = false)
    private LocalDateTime deadline;

    @Embedded
    private BaseTime baseTime;


    @Builder
    public PurchaseAuction(String auctionTitle, String productName, String description, ProductCategory productCategory) {
        this.auctionTitle = auctionTitle;
        this.productName = productName;
        this.description = description;
        this.productCategory = productCategory;
        setDeadLine();
        baseTime = new BaseTime();
    }

    private void setDeadLine() {
        this.deadline = LocalDateTime.now().plusDays(1);
    }
}
