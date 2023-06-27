package com.spring.springboot.service;

import com.spring.member.repository.MemberRepository;
import com.spring.springboot.model.Member;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class mvcService {

    private MemberRepository memberRepository;

//    public List<Member> getAllMembers() {
//        return memberRepository.findAll();
//    }
}
