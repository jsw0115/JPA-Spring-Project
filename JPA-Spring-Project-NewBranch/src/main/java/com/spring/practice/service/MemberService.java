package com.spring.practice.service;

import com.spring.practice.dto.MemberDTO;
import com.spring.practice.entity.MemberEntity;
import com.spring.practice.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberRepository memberRepository;
    public void save(MemberDTO memberDTO) {
        // 1. dto -> entity 변환
        // 2. repository의 save 메서드 호출
        MemberEntity memberEntity = MemberEntity.toMemberEntity(memberDTO);
        memberRepository.save(memberEntity);
        // repository의 save 메서드 호출 ( 조건 : entity 객체를 넘겨줘야 함 )
    }

    public MemberDTO login (MemberDTO memberDTO) {
        /*
        * 1. 회원이 입력한 이메일로 DB에서 조회
        * 2. DB에서 조회한 비밀번호와 사용자가 입력한 비밀번호가 일치하는지 판단
        * */
        Optional<MemberEntity> byMemberEmail = memberRepository.findByMemberEmail(memberDTO.getMemberEmail());
        if (byMemberEmail.isPresent()) {
            // 조회 결과 있음 ( 해당 이메일 가진 회원 있음 )
            MemberEntity memberEntity = byMemberEmail.get();
            if (memberEntity.getMemberPassword().equals(memberDTO.getMemberPassword())) {
                // 비밀번호 일치
                // entity -> dto 변환 후 리턴
                MemberDTO dto = MemberDTO.toMemberDTO(memberEntity);
                return dto;
            } else {
                // 비밀번호 불일치 ( 로그인 실패 )
                return null;
            }
        } else {
            // 조회 결과 없음 ( 해당 이메일 가진 회원 없음 )
            return null;
        }
    }
}
