package com.bidbid.entity.saleauction;

import com.bidbid.entity.Member;
import com.bidbid.global.BaseTime;
import com.bidbid.global.ProductCategory;
import lombok.*;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class SaleAuction {
    @Id
    @GeneratedValue
    private Long id;

    @Column(nullable = false)
    private String productName;

    @Enumerated(EnumType.STRING)
    private ProductCategory productCategory;

    @Lob
    private String description;

    @Setter
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "seller_id", nullable = false)
    private Member seller;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "best_buyer_id")
    private Member bestBuyer;

    @Setter
    private String image;

    @Column(nullable = false)
    private LocalDateTime deadline;

    @Column(nullable = false)
    private Integer price = 0;

    @Embedded
    private BaseTime baseTime;

    @Builder
    public SaleAuction(String productName, ProductCategory productCategory, String immage ,String description, Integer price) {
        this.productName = productName;
        this.productCategory = productCategory;
        this.image = immage;
        this.description = description;
        this.price = price;
        baseTime = new BaseTime();
        setDeadLine();
    }

    public void renewalBid(Member buyer, Integer price) {
        if(this.price > price) {
            throw new IllegalArgumentException("price must be greater than now");
        }
        this.price = price;
        buyer.usePoint(price);
        this.bestBuyer = buyer;
    }

    private void setDeadLine() {
        this.deadline = LocalDateTime.now().plusDays(1);
    }
}
