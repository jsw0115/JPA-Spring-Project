package com.spring.ajaxTest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AjaxHomeController {
    @GetMapping("/ajax")
    public String ajaxHomePage() {
        return "ajaxTest/ajaxIndex";
    }
}
