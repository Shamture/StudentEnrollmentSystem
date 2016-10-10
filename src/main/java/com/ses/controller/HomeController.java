package com.ses.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {

	@RequestMapping(value="/home")
	public String home(){
		return "index";
	}
	
	@RequestMapping(value="/promo")
	public String promo(){
		return "index";
	}
}
