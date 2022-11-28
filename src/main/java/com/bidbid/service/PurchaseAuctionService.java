package com.bidbid.service;

import com.bidbid.repository.PurchaseAuctionRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PurchaseAuctionService {
    private final PurchaseAuctionRepository purchaseAuctionRepository;


}
