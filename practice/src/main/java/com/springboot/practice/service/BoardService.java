package com.springboot.practice.service;

//import com.springboot.practice.BoardRepository;
import com.springboot.practice.Board2;
import com.springboot.practice.BoardRepository;
import com.springboot.practice.Dto.BoardRequestDto;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class BoardService {
    // CRUD 작성
    // 페이징 처리

    @Autowired
    private BoardRepository boardRepository;


    public void write(Board2 board2) {
        // 엔티티를 이 안에 넣어줌
        boardRepository.save(board2);
    }

    public List<Board2> boardList() throws Exception {
        return boardRepository.findAll();
    }


}
