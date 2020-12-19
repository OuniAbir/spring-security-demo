package com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoConroller {

	@GetMapping("/") String showHome() {
		return "home" ;
	}
	@GetMapping("/showLoginPage")
	public String showLoginPage() {
		
		//return "login-form";
		return "fancy-login";
	}
}
