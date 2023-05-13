package com.spring.ajaxTest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

//@Controller
@Controller
public class AjaxViewController {

    @GetMapping("/ajax-ex-01")
    public String ajaxEx01() {
        return "ajaxTest/ajax-ex-01";
    }
}
