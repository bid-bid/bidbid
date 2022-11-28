package com.bidbid.entity;

import com.bidbid.config.security.Role;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class Member {
    @Id
    @GeneratedValue
    private Long id;

    @Getter
    private String email;
    @Getter
    private String password;
    private String name;

    private Integer point = 0;

    @Enumerated(EnumType.STRING)
    @Getter
    private Role role = Role.ROLE_USER;

    @Builder
    public Member(String email, String password, String name) {
        this.email = email;
        this.password = password;
        this.name = name;
    }

    public void chargePoint(Integer point) {
        this.point += point;
    }
}
