package com.nextrip.modules.codeGroup;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



@Controller
@RequestMapping(value = "/nextrip/")
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
	
	@RequestMapping(value="codeGroupView")
	public String codeGroupView(CodeGroup dto, @ModelAttribute("vo") CodeGroupVo vo, Model model) throws Exception{
		if(vo.getCodeGroupSeq().equals("0") || vo.getCodeGroupSeq().equals("")) {
			//insert
		} else {
			
			CodeGroup item = service.selectOne(vo);
			model.addAttribute("item", item);
		}
		return "kdmin/codeGroup/codeGroupView";
	}
	
	@RequestMapping(value = "codeGroupInsert")
	public String codeGroupInsert(CodeGroup dto, CodeGroupVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.codeGroupInsert(dto);
		vo.setCodeGroupSeq(dto.getCodeGroupSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:codeGroupView";
	}
	
	@RequestMapping(value="codeGroupUpdate")
	public String codeGroupUpdate(CodeGroup dto, CodeGroupVo vo, RedirectAttributes redirectAttributes)throws Exception{
		
		service.codeGroupUpdate(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:codeGroupView";
	}
	
	@RequestMapping(value="codeGroupUelete")
	public String codeGroupUelete(CodeGroup dto, RedirectAttributes redirectAttributes)throws Exception{
		
		service.codeGroupUelete(dto);
		
		return "redirect:codeGroupList";
	}
	
	@RequestMapping(value="codeGroupDelete")
	public String codeGroupDelete(CodeGroupVo vo, RedirectAttributes redirectAttributes)throws Exception{
		
		service.codeGroupDelete(vo);
		
		return "redirect:codeGroupList";
	}
}
