package com.spring.springboot.repository;

import com.spring.springboot.model.Member;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class mvcRepository {
    public List<Member> findAll() {
        List<Member> members = new ArrayList<>();
        members.add(new Member("정성원", 20, "jsw0101151@kaoni.com"));
        members.add(new Member("정성원", 20, "jsw0101151@kaoni.com"));
        members.add(new Member("정성원", 20, "jsw0101151@kaoni.com"));

        return members;
    }
}
