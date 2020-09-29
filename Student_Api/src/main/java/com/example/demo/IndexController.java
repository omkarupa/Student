package com.example.demo;

import org.springframework.stereotype.Controller;

@Controller
public class IndexController {
	
	public String home()
	{
		return "index";
	}

}
