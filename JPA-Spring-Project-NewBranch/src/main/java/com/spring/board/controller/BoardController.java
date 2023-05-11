package com.spring.board.controller;

import com.spring.board.dto.BoardDTO;
import com.spring.board.service.BoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor    // 생성자 주입 방법 中 1 -> final 혹은 @NotNull 필드 생성자 자동 생성 lombok 어노테이션
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

    @GetMapping ("/")
    public String findAll (Model model) {
        // DB에서 전체 게시글 데이터를 가져와 list.html 에 보여줌
        List<BoardDTO> boardDTOList = boardService.findAll();
        model.addAttribute("boardList", boardDTOList);
        return "board/list";
    }

    @GetMapping ("/{id}")
    public String findById(@PathVariable Long id, Model model) {
        /*
            해당 게시글의 조회수를 하나 올리고
            게시글 데이터를 가져와 detail.html 출력
        */
        boardService.updateHits(id);
        BoardDTO boardDTO = boardService.findById(id);
        model.addAttribute("board", boardDTO);
        return "board/detail";
    }
}
