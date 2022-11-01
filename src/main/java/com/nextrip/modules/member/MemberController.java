package com.nextrip.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="/nextrip/mypage")
	public String selectMemberList(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception {
		
		List<Member> list = service.selectMemberList(vo);
		model.addAttribute("list", list);
		
		return "user/mypage/mypage";
	}

}
