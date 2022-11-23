package com.bidbid.controller.api;

import com.bidbid.dto.member.SignupRequest;
import com.bidbid.entity.Member;
import com.bidbid.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("api/members")
@RequiredArgsConstructor
public class MemberController {
    private final MemberService memberService;

    @PostMapping
    public String createMember(@Valid SignupRequest dto) {
        Member member = memberService.signup(dto);

        return "redirect:/signup-finish";
    }
}
