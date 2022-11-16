package com.nextrip.modules.post;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/post/")
public class PostController {
	@Autowired
	PostServiceImpl service;
	
	@RequestMapping(value="postList")
	public String postList(@ModelAttribute("vo") PostVo vo, Model model)throws Exception{
		vo.setParamsPaging(service.selectListCount(vo));
		List<Post> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "kdmin/post/postList";
	}
	@RequestMapping(value="postView")
	public String postView(Post dto, @ModelAttribute("vo") PostVo vo, Model model) throws Exception{
		if(vo.getNxPostSeq().equals("0") || vo.getNxPostSeq().equals("")) {
			//insert
		} else {
			
			Post item = service.selectOne(vo);
			model.addAttribute("postListUploaded", service.postListUploaded(vo));
			item.setLng(item.getLng() == null ?  Integer.toString(127) : item.getLng());
			item.setLat(item.getLat() == null ? Integer.toString(37) : item.getLat());
			model.addAttribute("item", item);
		}
		return "kdmin/post/postView";
	}
	
	@RequestMapping(value="postUserView")
	public String postUserView(Post dto, @ModelAttribute("vo") PostVo vo, Model model)throws Exception{
			Post item = service.postSelectOne(vo);
			model.addAttribute("item", item);
		
		return "user/post/postUserView";
	}
	
	@RequestMapping(value="postUserList")
	public String postUserList(@ModelAttribute("vo") PostVo vo, Model model)throws Exception{
		
		vo.setParamsPaging(service.postSelectListCount(vo));
		List<Post> list = service.postSelectList(vo);
		model.addAttribute("list", list);
		
		return "user/post/postUserList";
	}
	
	@RequestMapping(value="postRegMod")
	public String postRegMod(Post dto, @ModelAttribute("vo") PostVo vo, Model model)throws Exception{
		System.out.println("vo.getNxPostSeq(): " + vo.getNxPostSeq());
		if(vo.getNxPostSeq().equals("0") || vo.getNxPostSeq().equals("")) {
			//insert
		} else {
			Post item = service.postSelectOne(vo);
			model.addAttribute("postListUploaded", service.postListUploaded(vo));
			model.addAttribute("item", item);
		}
		return "user/post/postRegMod";
	}
	
	@RequestMapping(value="postUserInsert")
	public String postUserInsert(Post dto, PostVo vo, HttpSession httpSession, RedirectAttributes redirectAttributes)throws Exception{
		dto.setMemberSeq((String) httpSession.getAttribute("sessSeq"));
		service.postInsert(dto);
		vo.setNxPostSeq(dto.getNxPostSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:postUserView";
	}
	
	@RequestMapping(value="postUserUpdate")
	public String postUserUpdate(Post dto, PostVo vo, RedirectAttributes redirectAttributes)throws Exception{
		
		service.postUpdate(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:postUserView";
	}
	
	@RequestMapping(value="postInsert")
	public String postInsert(Post dto, PostVo vo, RedirectAttributes redirectAttributes)throws Exception{
		
		service.postInsert(dto);
		vo.setNxPostSeq(dto.getNxPostSeq());	
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:postView";
	}
	
	@RequestMapping(value="postUpdate")
	public String postUpdate(Post dto, PostVo vo, RedirectAttributes redirectAttributes)throws Exception{
		
		service.postUpdate(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:postView";
	}
	
	@RequestMapping(value="postUelete")
	public String postUelete(Post dto, RedirectAttributes redirectAttributes)throws Exception{
		
		service.postUelete(dto);
		
		return "redirect:postList";
	}
	
	@RequestMapping(value="postDelete")
	public String postDelete(PostVo vo, RedirectAttributes redirectAttributes)throws Exception{
		
		service.postDelete(vo);
		
		return "redirect:postList";
	}
	
	
	

}

