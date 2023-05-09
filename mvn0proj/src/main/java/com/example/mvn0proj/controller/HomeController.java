package com.example.mvn0proj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String index() {
        System.out.println("Main controller 만들어짐");
        return "index";
    }

}
