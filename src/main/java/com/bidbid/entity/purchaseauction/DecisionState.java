package com.bidbid.entity.purchaseauction;

public enum DecisionState {
    SELECTION("선정"),
    DISMISSAL("기각"),
    UNIDENTIFIED("미확인");

    private final String korean;

    DecisionState(String korean) {
        this.korean = korean;
    }

}
