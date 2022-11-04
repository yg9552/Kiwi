package com.nextrip.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nextrip.modules.codeGroup.CodeGroupServiceImpl;


@Controller
@RequestMapping(value = "/code/")
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@Autowired
	CodeGroupServiceImpl servicecg;
	
	@RequestMapping(value = "codeList")
	public String codeList(Model model, @ModelAttribute("vo") CodeVo vo) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Code> list = service.selectlist(vo);
		model.addAttribute("list", list);
		
		return "kdmin/code/codeList";
	}
}
