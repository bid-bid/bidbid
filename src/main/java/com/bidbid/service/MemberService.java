
package com.bidbid.service;

import com.bidbid.dto.member.ChargePointRequest;
import com.bidbid.dto.member.SignupRequest;
import com.bidbid.entity.Member;
import com.bidbid.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import javax.persistence.EntityExistsException;
import javax.persistence.EntityNotFoundException;
import javax.transaction.Transactional;
import java.security.Principal;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final MemberRepository memberRepository;
    private final PasswordEncoder passwordEncoder;

    @Transactional
    public Member signup(SignupRequest dto) {
        if(memberRepository.existsByEmail(dto.getEmail())) {
            throw new EntityExistsException();
        }
        dto.setPassword(passwordEncoder.encode(dto.getPassword()));

        return memberRepository.save(dto.toEntity());
    }

    public Member getLoginMember(String email) {
        return memberRepository.findByEmail(email)
                .orElseThrow(EntityNotFoundException::new);
    }

    public Member getLoginMember(Principal principal) {
        return getLoginMember(principal.getName());
    }

    @Transactional
    public void chargePoint(ChargePointRequest dto, Principal principal) {
        Member member = memberRepository.findByEmail(principal.getName())
                .orElseThrow(EntityNotFoundException::new);
        member.chargePoint(dto.getPoint());
    }
}
