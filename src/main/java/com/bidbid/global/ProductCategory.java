package com.bidbid.global;

public enum ProductCategory {
    NONE("없음"),
    BOOK("도서"),
    DIGITAL("가전, 컴퓨터"),
    FURNITURE("가구"),
    BEAUTY("뷰티, 화장품"),
    FOOD("식품, 건강"),
    GIFT_CARD("E 쿠폰"),
    TICKET("티"),
    HOBBY("취미"),
    CLOTHING("의류"),
    ACCESSORIES("잡화"),
    LIVING("생활, 주방"),
    SPORTS("스포츠"),
    ETC("기타");

    private final String toKorean;

    ProductCategory(String toKorean) {
        this.toKorean = toKorean;
    }

    public String getToKorean() {
        return toKorean;
    }
}
