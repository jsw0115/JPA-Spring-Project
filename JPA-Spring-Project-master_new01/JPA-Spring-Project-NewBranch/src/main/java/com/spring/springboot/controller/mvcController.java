package com.spring.springboot.controller;

import com.spring.springboot.model.Member;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
//@RequiredArgsConstructor
@RequestMapping("/mvc")
public class mvcController {
    private List<Member> members = new ArrayList<>();

    @GetMapping("/members")
    public String getMemberList ( Model model ) {
        model.addAttribute("members", members);
        return "view/view";
    }
}
