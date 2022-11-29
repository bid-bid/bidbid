package com.bidbid.controller;

import com.bidbid.dto.member.SignupRequest;
import com.bidbid.service.MemberService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("test")
@RequiredArgsConstructor
public class TestController {

    private final MemberService memberService;

    @GetMapping("member")
    public String member() {
        List<SignupRequest> dto = List.of(
                new SignupRequest("a@a.com", "a", "a"),
                new SignupRequest("b@b.com", "b", "b"),
                new SignupRequest("c@c.com", "c", "c"),
                new SignupRequest("d@d.com", "d", "d"),
                new SignupRequest("e@e.com", "e", "e"),
                new SignupRequest("f@f.com", "f", "f"),
                new SignupRequest("g@g.com", "g", "g"),
                new SignupRequest("h@h.com", "h", "h"));
        dto.forEach(memberService::signup);

        return "home";
    }
}
