package com.bidbid.dto.member;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class LoginRequest {
    @Email
    @NotEmpty
    private String email;
    @NotEmpty
    private String password;
}