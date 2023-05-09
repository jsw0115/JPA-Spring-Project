package com.recruit.Recruit03_mvn.domain;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BoardRepository extends JpaRepository<Board, Integer> {
    // 레포지토리 -> 서비스에서 이용
}
