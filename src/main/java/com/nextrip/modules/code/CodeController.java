package com.nextrip.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nextrip.modules.codeGroup.CodeGroupServiceImpl;


@Controller
@RequestMapping(value = "/nextrip/")
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
		
		return "kdmin/codeGroup/codeList";
	}
	
	@RequestMapping(value="codeView")
	public String codeView(Code dto, @ModelAttribute("vo") CodeVo vo, Model model) throws Exception{
		if(vo.getCodeSeq().equals("0") || vo.getCodeSeq().equals("")) {
			//insert
		} else {
			
			Code item = service.selectOne(vo);
			model.addAttribute("item", item);
		}
		return "kdmin/codeGroup/codeView";
	}
	
	@RequestMapping(value = "codeInsert")
	public String codeInsert(Code dto, CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		service.codeInsert(dto);
		vo.setCodeSeq(dto.getCodeSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:codeView";
	}
	
	@RequestMapping(value="codeUpdate")
	public String codeUpdate(Code dto, CodeVo vo, RedirectAttributes redirectAttributes)throws Exception{
		
		service.codeUpdate(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:codeView";
	}
	
	@RequestMapping(value="codeUelete")
	public String codeUelete(Code dto, RedirectAttributes redirectAttributes)throws Exception{
		
		service.codeUelete(dto);
		
		return "redirect:codeList";
	}
	
	@RequestMapping(value="codeDelete")
	public String codeDelete(CodeVo vo, RedirectAttributes redirectAttributes)throws Exception{
		
		service.codeDelete(vo);
		
		return "redirect:codeList";
	}
}
