package com.recruit.recruit03.controller;

import com.recruit.recruit03.service.BoardService;
import org.apache.catalina.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import java.util.List;

@RestController
public class BoardController {

//    private final BoardService boardService;

//    @GetMapping(value = "api/test")
//    public String test(){
//        String json = "{name : 'icecream'}";
//        return json;
//    }

//    @GetMapping(value = "api/user")
//    public List<User> getUserList(){
//        return BoardService.getUserList();
//    }

//    @GetMapping(value = "api/user/{userId}")
//    public String getUser(@PathVariable Long userId){
//        return BoardService.getUser(userId);
//    }

}
