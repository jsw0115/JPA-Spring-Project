package com.recruit.Recruit03_mvn.service;

import com.recruit.Recruit03_mvn.domain.BoardRepository;
import com.recruit.Recruit03_mvn.domain.Board;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class BoardService {
    // CRUD 작성
    // 페이징 처리

    @Autowired
    private BoardRepository boardRepository;


    public void write(Board board) {
        // 엔티티를 이 안에 넣어줌
        boardRepository.save(board);
    }

    public List<Board> boardList() throws Exception {
        return boardRepository.findAll();
    }
}
