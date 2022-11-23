
package com.bidbid.service;

import com.bidbid.dto.member.SignupRequest;
import com.bidbid.entity.Member;
import com.bidbid.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import javax.persistence.EntityExistsException;

@Service
@RequiredArgsConstructor
public class MemberService {

    private final MemberRepository memberRepository;

    public Member signup(SignupRequest dto) {
        if(memberRepository.existsByEmail(dto.getEmail())) {
            throw new EntityExistsException();
        }

        return memberRepository.save(dto.toEntity());
    }
}
