package com.spring.board.controller;

import com.spring.board.dto.BoardDTO;
import com.spring.board.dto.CommentDTO;
import com.spring.board.service.BoardService;
import com.spring.board.service.CommentService;
import com.spring.member.dto.MemberDTO;
import com.spring.member.service.MemberService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequiredArgsConstructor    // 생성자 주입 방법 中 1 -> final 혹은 @NotNull 필드 생성자 자동 생성 lombok 어노테이션
@RequestMapping("/board")
public class BoardController {
    // 생성자 주입
    private final MemberService memberService;
    private final BoardService boardService;
    private final CommentService commentService;
    @GetMapping ("/save")
    public String saveForm() {
//        String myEmail = (String) session.getAttribute("loginEmail");
//        BoardDTO boardDTO = boardService.up
        return "board/boardSave";
    }

    @PostMapping ("/save")
    public String save (@ModelAttribute BoardDTO boardDTO) {
//        MemberDTO loginResult = memberService.login(memberDTO);
        System.out.println("BoardDTO : " + boardDTO);
//        session.setAttribute("loginName", loginResult.getMemberName());
        boardService.save(boardDTO);
        return "board/boardIndex";
    }

    @GetMapping ("/")
    public String findAll (Model model) {
        // DB에서 전체 게시글 데이터를 가져와 boardList.html 에 보여줌
        List<BoardDTO> boardDTOList = boardService.findAll();
        model.addAttribute("boardList", boardDTOList);
        return "board/boardList";
    }

    @GetMapping ("/{id}")
    public String findById(@PathVariable Long id, Model model, @PageableDefault(page = 1) Pageable pageable) {
        /*
            해당 게시글의 조회수를 하나 올리고
            게시글 데이터를 가져와 boardDetail.html 출력
        */
        boardService.updateHits(id);
        BoardDTO boardDTO = boardService.findById(id);
        /* 댓글 목록 가져오기 */
        List<CommentDTO> commentDTOList = commentService.findAll(id);
        model.addAttribute("commentList", commentDTOList);
        model.addAttribute("board", boardDTO);
        model.addAttribute("page", pageable.getPageNumber());
        return "board/boardDetail";
    }

    @GetMapping("/update/{id}")
    public String updateForm (@PathVariable Long id, Model model) {
        BoardDTO boardDTO = boardService.findById(id);
        model.addAttribute("boardUpdate", boardDTO);
        return "board/boardUpdate";
    }

    @PostMapping("/update")
    public String update (@ModelAttribute BoardDTO boardDTO, Model model) {
        BoardDTO board = boardService.update(boardDTO);
        model.addAttribute("board", board);
        return "board/boardDetail";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable Long id) {
        boardService.delete(id);
        return "redirect:/board/paging?page=1";
    }

    // /board/paging?page=1
    @GetMapping("/paging")
    public String paging (@PageableDefault(page = 1) Pageable pageable, Model model) {
        pageable.getPageNumber();
        Page<BoardDTO> boardList = boardService.paging(pageable);
        int blockLimit = 5;
        int startPage = (((int)(Math.ceil((double)pageable.getPageNumber() / blockLimit))) -1) * blockLimit +1;
        int endPage = ((startPage + blockLimit -1) < boardList.getTotalPages()) ? startPage + blockLimit - 1 : boardList.getTotalPages();
        // page 갯수 5
        // 현재 사용자가 3 페이지
        // 1 2 3
        // 현재 사용자가 7 페이지
        // 보여지는 페이지 개수 3개
        // 총 페이지 갯수 8개

        model.addAttribute("boardList", boardList);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);
        return "board/boardPaging";
    }
}
