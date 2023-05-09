package com.recruit.recruit03.controller;


import org.springframework.http.CacheControl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.concurrent.TimeUnit;

@Controller
public class HomeController implements WebMvcConfigurer {
    public void main(String[] args) {
        System.out.println("Hello World!");
    }

    @Override
    public void addResourceHandlers(final ResourceHandlerRegistry registry){
        registry.addResourceHandler("/**")
                .addResourceLocations("classpath:/templates/")
                .setCacheControl(CacheControl.maxAge(10, TimeUnit.MINUTES));
        registry.addResourceHandler("/**")
                .addResourceLocations("classpath:/static/css/")
                .setCacheControl(CacheControl.maxAge(10, TimeUnit.MINUTES));
    }

    @GetMapping("/test1") // localhost:8090/board/write
    public String home(){
//        model.addAttribute("data","hello!!");
        return "test.html";
    }

    @GetMapping("/write") // localhost:8090/board/write
    public String writeFrom(){
//        model.addAttribute("data","hello!!");
        return "writeform.html";
    }
}
