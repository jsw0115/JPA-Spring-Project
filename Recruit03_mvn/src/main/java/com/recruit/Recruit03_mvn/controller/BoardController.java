package com.recruit.Recruit03_mvn.controller;

import com.recruit.Recruit03_mvn.domain.Board;
import com.recruit.Recruit03_mvn.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class BoardController {

    @Autowired
    private BoardService boardService;

    @GetMapping(value = "/boardList")
    public String boardlist(Model model) throws Exception {
        // 서비스에서 생성한 리스트를 list 이름으로 반환
        List<Board> list = boardService.boardList();
        model.addAttribute("list", list);
        return "templates/listRentRoom";
    }

    @RequestMapping(value = "/main")
    public String main (){
        return "index.html";
    }

    @RequestMapping(value = "/boardWrite")
    public String boardWrite() {
        return "writeRentRoom";
    }



}
