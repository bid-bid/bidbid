package com.bidbid.service;

import com.bidbid.dto.saleauction.RenewalBidRequest;
import com.bidbid.dto.saleauction.SaleAuctionRequest;
import com.bidbid.entity.Member;
import com.bidbid.entity.saleauction.SaleAuction;
import com.bidbid.global.ProductCategory;
import com.bidbid.repository.SaleAuctionRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.EntityNotFoundException;
import javax.transaction.Transactional;
import java.security.Principal;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
@Slf4j
public class SaleAuctionService {
    private final SaleAuctionRepository saleAuctionRepository;
    private final MemberService memberService;
    private final ImageService imageService;

    @Transactional
    public SaleAuction create(SaleAuctionRequest dto, MultipartFile image, Principal principal) {
        SaleAuction saleAuction = dto.toEntity();
        saleAuction.setSeller(memberService.getLoginMember(principal));
        Optional.ofNullable(image).ifPresent(i -> saleAuction.setImage(imageService.save(i)));

        return saleAuctionRepository.save(saleAuction);
    }

    public SaleAuction findById(Long id) {
        return saleAuctionRepository.findById(id)
                .orElseThrow(EntityNotFoundException::new);
    }

    public List<SaleAuction> findAll() {
        return saleAuctionRepository.findAll(Sort.by(Sort.Direction.DESC, "deadline"));
    }

    public List<SaleAuction> findAllByCategory(ProductCategory category) {
        return saleAuctionRepository.findAllByProductCategory(category);
    }

    public List<SaleAuction> findAllBySeller(Principal principal) {
        Member loginMember = memberService.getLoginMember(principal);
        return saleAuctionRepository.findAllBySeller(loginMember);
    }

    @Transactional
    public void renewalBid(Long id, RenewalBidRequest dto, Principal principal) {
        SaleAuction saleAuction = findById(id);
        Member buyer = memberService.getLoginMember(principal);
        saleAuction.renewalBid(buyer, dto.getPoint());
    }

    public List<SaleAuction> findAllByProductName(String productName) {
        return saleAuctionRepository.findAllByProductNameContaining(productName);
    }

    public List<SaleAuction> findAllByCategoryAndProductName(ProductCategory category, String productName) {
        return saleAuctionRepository.findAllByProductCategoryAndProductNameContaining(category, productName);
    }


}
