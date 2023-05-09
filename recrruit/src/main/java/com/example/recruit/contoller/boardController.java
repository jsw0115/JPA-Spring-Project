package com.example.recruit.contoller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class boardController {
	
	@RequestMapping("/home")
	public String main(Model model) throws Exception {
		return "index";
	}
}
