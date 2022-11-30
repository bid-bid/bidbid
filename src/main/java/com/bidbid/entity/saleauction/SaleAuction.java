package com.bidbid.entity.saleauction;

import com.bidbid.entity.Member;
import com.bidbid.global.BaseTime;
import com.bidbid.global.ProductCategory;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Entity
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

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "seller_id", nullable = false)
    private Member seller;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "best_buyer_id")
    private Member bestBuyer;

    @OneToMany(mappedBy = "saleAuction")
    private List<SaleAuctionImage> images = new ArrayList<>();

    @Column(nullable = false)
    private LocalDateTime auctionDeadline;

    @Column(nullable = false)
    private Integer price = 0;

    @Setter
    @Embedded
    private BaseTime baseTime;

    @Builder
    public SaleAuction(String productName, ProductCategory productCategory, String description, LocalDateTime auctionDeadline, Integer price) {
        this.productName = productName;
        this.productCategory = productCategory;
        this.description = description;
        this.auctionDeadline = auctionDeadline;
        this.price = price;
        baseTime = new BaseTime();
    }
}
