package com.spring.member.controller;

import com.spring.member.dto.MemberDTO;
import com.spring.member.service.MemberService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/member")
public class MemberController {

    // 생성자 주입
    private final MemberService memberService;

    // 회원가입 페이지 출력 요청
    @GetMapping("/save")
    public String saveForm() {
        return "member/memberSave";
    }

    @PostMapping("/save")
    public String save (@ModelAttribute MemberDTO memberDTO) {
        try {
            System.out.println("MemberController.save");
            System.out.println("memberDTO : " + memberDTO);
            memberService.save(memberDTO);
        } catch (Exception e) {
            // 중복된 이메일인 경우 알림창 띄우기 등의 처리
            return "member/duplicateEmail";
        }
        return "member/login";
    }

    @GetMapping("/login")
    public String loginForm() {
        return "member/login";
    }

    @PostMapping("/login")
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session ) {
        MemberDTO loginResult = memberService.login(memberDTO);
        if (loginResult != null) {
            // login 성공
            session.setAttribute("loginEmail", loginResult.getMemberEmail());
            session.setAttribute("loginName", loginResult.getMemberName());
            return "main";
        } else {
            // login 실패
            return "member/incorrectEmailOrPasswd";
        }
    }

    @GetMapping("/")
    public String findAll (Model model) {
        List<MemberDTO> memberDTOList = memberService.findAll();
        // 어떠한 HTML로 가져갈 데이터가 있다면 model 사용
        model.addAttribute("memberList", memberDTOList);
        return "member/memberList";
    }

    @GetMapping("/{id}")
    public String findById (@PathVariable Long id, Model model) {
        MemberDTO memberDTO = memberService.findById(id);
        model.addAttribute("member", memberDTO);
        return "member/memberDetail";
    }

    @GetMapping("/update")
    public String updateForm (HttpSession session, Model model) {
        String myEmail = (String) session.getAttribute("loginEmail");
        MemberDTO memberDTO = memberService.updateForm(myEmail);
        model.addAttribute("updateMember", memberDTO);
        return "member/memberUpdate";
    }

    @PostMapping("/update")
    public String update (@ModelAttribute MemberDTO memberDTO) {
        memberService.update(memberDTO);
        return "redirect:/member/" + memberDTO.getId();
    }

    @GetMapping("/delete/{id}")
    public String deleteById (@PathVariable Long id) {
        memberService.deleteById(id);
        return "redirect:/member/";
    }

    @GetMapping("/logout")
    public String logout (HttpSession session) {
        session.invalidate();
        return "index";
    }
    @RequestMapping (value = "/member/email-check", method = RequestMethod.POST)
    public @ResponseBody String emailCheck (@RequestParam("memberEmail") String memberEmail) {
        System.out.println("memberEmail = " + memberEmail);
        String checkResult = memberService.emailCheck(memberEmail);
        if (checkResult != null) {
            return "ok";
        } else {
            return "no";
        }
    }
}
