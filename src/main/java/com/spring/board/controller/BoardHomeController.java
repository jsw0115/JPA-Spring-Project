package com.spring.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardHomeController {
    @GetMapping("/board")
    public String boardHomePage() {
        return "board/boardIndex";
    }
}
