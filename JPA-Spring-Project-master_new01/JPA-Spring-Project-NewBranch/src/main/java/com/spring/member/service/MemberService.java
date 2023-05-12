package com.spring.member.service;

import com.spring.member.dto.MemberDTO;
import com.spring.member.entity.MemberEntity;
import com.spring.member.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.DuplicateFormatFlagsException;
import java.util.List;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberRepository memberRepository;
    public void save (MemberDTO memberDTO) {
        // 1. dto -> entity 변환
        // 2. repository의 save 메서드 호출
        String memberEmail = memberDTO.getMemberEmail();
        Optional<MemberEntity> byMemberEntity = memberRepository.findByMemberEmail(memberEmail);
        if (byMemberEntity.isPresent()) {
            throw new DuplicateKeyException("이미 사용 중인 이메일 입니다 !!");
        }

        // 중복되지 않은 경우 저장
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

    public List<MemberDTO> findAll() {
        List<MemberEntity> memberEntityList = memberRepository.findAll();
        List<MemberDTO> memberDtoList = new ArrayList<>();
        for (MemberEntity memberEntity: memberEntityList) {
            memberDtoList.add(MemberDTO.toMemberDTO(memberEntity));
//            MemberDTO memberDto = MemberDTO.toMemberDTO(memberEntity);
//            memberDtoList.add(memberDto);
        }
        return memberDtoList;
    }

    public MemberDTO findById(Long id) {
        Optional<MemberEntity> optionalMemberEntity = memberRepository.findById(id);
        if (optionalMemberEntity.isPresent()) {
//            MemberEntity memberEntity = optionalMemberEntity.get();
//            MemberDTO memberDto = MemberDTO.toMemberDTO(memberEntity);
//            return memberDTO;
            return MemberDTO.toMemberDTO(optionalMemberEntity.get());
        } else {
            return null;
        }
    }

    public MemberDTO updateForm (String myEmail) {
        // memberRepository.findByMemberEmail(myEmail) -> 지역변수 참고
        Optional<MemberEntity> optionalMemberEntity = memberRepository.findByMemberEmail(myEmail);
        if (optionalMemberEntity.isPresent()) {
            return MemberDTO.toMemberDTO(optionalMemberEntity.get());
        }
        else {
            return null;
        }
    }

    public void update(MemberDTO memberDTO) {
        memberRepository.save(MemberEntity.toUpdateMemberEntity(memberDTO));
    }

    public void deleteById(Long id) {
        memberRepository.deleteById(id);
    }

    public String emailCheck(String memberEmail) {
        Optional<MemberEntity> byMemberEmail = memberRepository.findByMemberEmail(memberEmail);
        if (byMemberEmail.isPresent()) {
            // 조회결과가 있다 -> 사용할 수 없다.
            return null;
        } else {
            // 조회결과가 없다 -> 사용할 수 있다.
            return "ok";
        }
    }
}
