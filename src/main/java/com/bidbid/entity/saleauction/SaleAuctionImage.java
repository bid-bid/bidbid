package com.bidbid.entity.saleauction;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class SaleAuctionImage {
    @Id
    @GeneratedValue
    private Long id;

    private String name;

    private String url;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "auction_id")
    private SaleAuction saleAuction;
}
