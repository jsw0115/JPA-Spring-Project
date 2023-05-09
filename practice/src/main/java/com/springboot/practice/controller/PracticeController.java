package com.springboot.practice.controller;

import com.springboot.practice.Board2;
import com.springboot.practice.BoardRepository;
import com.springboot.practice.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
public class PracticeController {
    @Autowired
    private BoardService boardService;

//service..
    // jsp model로 받아오는

    @GetMapping(value = "/board/list")
    public String boardlist(Model model) throws Exception {
        // 서비스에서 생성한 리스트를 list 이름으로 반환
        List<Board2> list = boardService.boardList();
        model.addAttribute("list", list);
        return "views/board";
    }

    @RequestMapping("/board/write")
    public String write(){
        return "views/boardwrite";
    }

    // 2023.03.21 수정
    @RequestMapping("/board/writepro")
    public String writepro(){
        System.out.println("보유 원룸 수");
        System.out.println("매진 월임대료");
        System.out.println("월입대료 증액");
        System.out.println("유지비");

        return "";
    }

    @RequestMapping("/board/view")
    public String view(){
        return "views/home";
    }
}
