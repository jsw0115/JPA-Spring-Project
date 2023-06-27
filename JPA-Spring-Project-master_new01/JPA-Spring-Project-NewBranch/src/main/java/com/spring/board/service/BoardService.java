package com.spring.board.service;

import com.spring.board.dto.BoardDTO;
import com.spring.board.entity.BoardEntity;
import com.spring.board.repository.BoardRepository;
//import jakarta.transaction.Transactional;
//import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

// DTO -> Entity (Entity Class)
// Entity -> DTO (DTO Class)

@Service
@RequiredArgsConstructor
//@EnableTransactionManagement
public class BoardService {

    private final BoardRepository boardRepository;

//    @Transactional(
//            readOnly = true,
//            timeout = 10,
//            isolation = Isolation.REPEATABLE_READ,  // 트랜잭션이 시작한 시점의 상태를 읽을 수 있으며 다른 트랜잭션에서의 변경은 인식X => Non-repeatable Read는 방지
//            propagation = Propagation.MANDATORY)    // 이미 진행 중인 트랜잭션이 있어야 하며 그렇지 않으면 예외 발생
    public void save(BoardDTO boardDTO) {
        BoardEntity boardEntity = BoardEntity.toSaveEntity(boardDTO);
        boardRepository.save(boardEntity);
    }

    @Transactional(
            readOnly = true,
            timeout = 10,
            isolation = Isolation.READ_UNCOMMITTED,  // 다른 트랜잭션에서 아직 커밋되지 않은 변경 내용을 읽을 수 있음 -> Dirty Read, Non-repeatable Read, Phantom Read 문제 발생 간ㅇ
            propagation = Propagation.NOT_SUPPORTED)    // 트랜잭션 없이 실행하고, 이미 진행 중인 트랜잭션이 있다면 일시 중단
    public List<BoardDTO> findAll() {
        List<BoardEntity> boardEntityList = boardRepository.findAll();
        List<BoardDTO> boardDTOList = new ArrayList<>();
        for (BoardEntity boardEntity : boardEntityList) {
            boardDTOList.add (BoardDTO.toBoardDTO(boardEntity));
        }
        return boardDTOList;
    }

    @Transactional(
//            readOnly = true
            timeout = 10
            , isolation = Isolation.SERIALIZABLE  // 동시에 실행되는 다른 트랜잭션과 완전히 격리 도어 모순되지 않는 일관된 읽기 보장 - Dirty Read, Non-repeatable Read, Phantom Read 모두 방지
            , propagation = Propagation.SUPPORTS // 이미 진행 중인 트랜잭션이 있으면 그 트랜잭션에 참여하고 없으면 트랜잭션 없이 실행
    )
    public void updateHits(Long id) {
        boardRepository.updateHits(id);
    }

    @Transactional(
            readOnly = true,
            timeout = 10,
            isolation = Isolation.READ_COMMITTED,   // 다른 트랜잭션이 커밋한 변경 내용만 읽기 가능 => Non-repeatable Read 방지
            propagation = Propagation.REQUIRED) // 이미 진행 중인 트랜잭션이 있다면 그 트랜잭션에 참여하고 없으면 새로운 트랜잭션 시작
    public BoardDTO findById(Long id) {
        Optional<BoardEntity> optionalBoardEntity = boardRepository.findById(id);
        if (optionalBoardEntity.isPresent()) {
            BoardEntity boardEntity = optionalBoardEntity.get();
            BoardDTO boardDTO = BoardDTO.toBoardDTO(boardEntity);
            return boardDTO;
        } else {
            return null;
        }
    }

    @Transactional(
            readOnly = true,
            timeout = 10,
            isolation = Isolation.DEFAULT,  // DB의 기본 고립 수준 사용
            propagation = Propagation.NEVER)    // 트랜잭션이 없어야 하며 이미 진행 중인 트랜잭션이 있다면 예외 발생
    public BoardDTO update(BoardDTO boardDTO) {
        BoardEntity boardEntity = BoardEntity.toUpdateEntity(boardDTO);
        boardRepository.save(boardEntity);
        return findById(boardDTO.getId());
    }

    public void delete(Long id) {
        boardRepository.deleteById(id);
    }

    public Page<BoardDTO> paging(Pageable pageable) {
        int page = pageable.getPageNumber() - 1;    //   // => application.yml에서 추후 받기
        int pageLimit = 5;  // 한 페이지에 보여줄 글 갯수 => application.yml에서 추후 받기
        // 한 페이지당 3개씩 글 보여주고 정렬 기준은 id 기준으로 내림차순 정렬
        // page 위치에 있는 값은 0부터 시작
        Page<BoardEntity> boardEntities =
            boardRepository.findAll(PageRequest.of(page, pageLimit, Sort.by(Sort.Direction.DESC, "id")));
        // System.out.println("boardEntities.getContent() = " + boardEntities.getContent()); // 요청 페이지에 해당하는 글
        // System.out.println("boardEntities.getTotalElements() = " + boardEntities.getTotalElements()); // 전체 글 개수
        // System.out.println("boardEntities.getNumber() = " + boardEntities.getNumber()); // DB로 요청한 페이지 번호
        // System.out.println("boardEntities.getTotalElements() = " + boardEntities.getTotalElements()); // 전체 페이지 개수
        // System.out.println("boardEntities.getSize() = " + boardEntities.getSize()); // 한 페이지에 보여지는 글 개수
        // System.out.println("boardEntities.hasPrevious() = " + boardEntities.hasPrevious()); // 이전 페이지 존재 여부
        // System.out.println("boardEntities.isFirst() = " + boardEntities.isFirst()); // 첫 페이지 여부
        // System.out.println("boardEntities.isLast() = " + boardEntities.isLast()); // 마지막 페이지 여부

        // 목록 : id, writer, title, hits, createdTime
        Page<BoardDTO> boardDTOS = boardEntities.map(board -> new BoardDTO(board.getId(), board.getBoardWriter(), board.getBoardTitle(), board.getBoardHits(), board.getCreatedTime()));
        return boardDTOS;
    }
}
