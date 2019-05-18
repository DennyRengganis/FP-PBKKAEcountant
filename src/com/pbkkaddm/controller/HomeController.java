package com.pbkkaddm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String index() {
		return "login";
	}
	
//	@RequestMapping("/Login")
//	public String login() {
//		return "login";
//	}

}
