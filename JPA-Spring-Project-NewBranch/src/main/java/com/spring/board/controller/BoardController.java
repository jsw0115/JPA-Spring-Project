package com.spring.board.controller;

import com.spring.board.dto.BoardDTO;
import com.spring.board.service.BoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequiredArgsConstructor
@RequestMapping("/board")
public class BoardController {
    private final BoardService boardService;
    @GetMapping ("/save")
    public String saveForm() {
        return "board/save";
    }

    @PostMapping ("/save")
    public String save (@ModelAttribute BoardDTO boardDTO) {
        System.out.println("BoardDTO : " + boardDTO);
        boardService.save(boardDTO);
        return "board/boardIndex";
    }
}
