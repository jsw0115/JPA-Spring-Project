package com.springboot.practice;

import com.springboot.practice.Board2;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

@Repository
public interface BoardRepository extends JpaRepository<Board2, Integer> {
    // 레포지토리 -> 서비스에서 이용

}
