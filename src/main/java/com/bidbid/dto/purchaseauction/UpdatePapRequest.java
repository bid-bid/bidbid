package com.bidbid.dto.purchaseauction;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class UpdatePapRequest {
    private Integer price;
    private String description;

    public UpdatePapRequest(Integer price, String description) {
        this.price = price;
        this.description = description;
    }
}
