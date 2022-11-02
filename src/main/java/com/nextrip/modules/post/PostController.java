package com.nextrip.modules.post;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class PostController {
	@Autowired
	PostServiceImpl service;
	
	@RequestMapping(value="/post/postRegMod")
	public String postRegMod()throws Exception{
		
		return "user/post/postRegMod";
	}
}
