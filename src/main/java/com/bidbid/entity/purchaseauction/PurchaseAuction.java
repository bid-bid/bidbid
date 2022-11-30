package com.bidbid.entity.purchaseauction;

import com.bidbid.entity.Member;
import com.bidbid.global.BaseTime;
import com.bidbid.global.ProductCategory;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.Setter;

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

    @Enumerated(EnumType.STRING)
    private ProductCategory productCategory;

    @Setter
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "buyer_id")
    private Member buyer;

    @Column(nullable = false)
    private LocalDateTime deadline;

    @Embedded
    private BaseTime baseTime;

    public Member getBuyer() {
        return buyer;
    }

    @Builder
    public PurchaseAuction(String productName, String description, ProductCategory productCategory, LocalDateTime deadline) {
        this.productName = productName;
        this.description = description;
        this.productCategory = productCategory;
        this.deadline = deadline;
        baseTime = new BaseTime();
    }
}
