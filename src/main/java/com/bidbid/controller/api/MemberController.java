package com.bidbid.controller.api;

import com.bidbid.dto.member.ChargePointRequest;
import com.bidbid.dto.member.SignupRequest;
import com.bidbid.entity.Member;
import com.bidbid.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;
import java.security.Principal;

@Controller
@RequestMapping("api/members")
@RequiredArgsConstructor
public class MemberController {

    private final MemberService memberService;

    @GetMapping
    public String getLoginMember(Principal principal, Model model) {
        Member loginMember = memberService.getLoginMember(principal.getName());
        model.addAttribute("name", loginMember.getName());
        model.addAttribute("point", loginMember.getPoint());
        return "member/my-info";
    }

    @PostMapping
    public String createMember(@Valid SignupRequest dto) {
        memberService.signup(dto);

        return "redirect:/member/signup-finish";
    }

    @PostMapping("charge-point")
    public String chargePoint(ChargePointRequest dto, Principal principal) {
        memberService.chargePoint(dto, principal);
        return "redirect:/api/members";
    }
}
