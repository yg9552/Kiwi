package com.nextrip.modules.codeGroup;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception {

		//검색창 초기값
		vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy());
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);

		return "kdmin/codeGroup/codeGroupList";
	}
}
