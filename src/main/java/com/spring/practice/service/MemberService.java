package com.spring.practice.service;

import com.spring.practice.repository.MemberRepository;
import com.spring.practice.vo.MemberVO;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class MemberService {
    private MemberRepository memberRepository;

    public List<MemberVO> findAll() {
        List<MemberVO> members = new ArrayList<>();
        memberRepository.findAll().forEach(e -> members.add(e));
        return members;
    }

    public Optional<MemberVO> findById (Long mbrNo) {
        Optional<MemberVO> member = memberRepository.findById(mbrNo);
        return member;
    }

    public void deleteById (Long mbrNo) {
        memberRepository.deleteById(mbrNo);
    }

    public MemberVO save (MemberVO member) {
        memberRepository.save(member);
        return member;
    }

    public void updateById (Long mbrNo, MemberVO member) {
        Optional<MemberVO> e = memberRepository.findById(mbrNo);

        if(e.isPresent()) {
            e.get().setMbrNo(member.getMbrNo());
            e.get().setId(member.getId());
            e.get().setName(member.getName());
        }
    }

}
