package com.pbkkaddm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String login() {
		return "login";
	}
	
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/addTransaction")
	public String addTransaction() {
		return "addTransaction";
	}

}
