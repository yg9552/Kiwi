package com.nextrip.common.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nextrip.modules.accommodation.Accommodation;
import com.nextrip.modules.accommodation.AccommodationServiceImpl;
import com.nextrip.modules.accommodation.AccommodationVo;
import com.nextrip.modules.code.Code;
import com.nextrip.modules.code.CodeServiceImpl;
import com.nextrip.modules.code.CodeVo;
import com.nextrip.modules.post.Post;
import com.nextrip.modules.post.PostServiceImpl;
import com.nextrip.modules.post.PostVo;

@Controller
@RequestMapping(value = "/nextrip/")
public class CommonController {
	
	@Autowired
	AccommodationServiceImpl serviceAcmd;
	
	@Autowired
	PostServiceImpl servicePost;
	
	@Autowired
	CodeServiceImpl serviceCode;
	
	@RequestMapping("regionView")
	public String region(@ModelAttribute("vo") CodeVo vo, AccommodationVo voAcmd, PostVo voPost, Model model) throws Exception {
		List<Accommodation> list = serviceAcmd.selectList(voAcmd);
		Accommodation item = serviceAcmd.selectOne(voAcmd);
		Code itemC = serviceCode.selectOneRegion(vo);
		List<Post> bestPost = servicePost.bestRegionPost(voPost);
		model.addAttribute("item", item);
		model.addAttribute("itemC", itemC);
		model.addAttribute("list", list);
		model.addAttribute("bestPost", bestPost);
		model.addAttribute("listUploaded", serviceAcmd.selectListUploaded(voAcmd));
		
		return "user/region/regionView";
	}
	
	@RequestMapping("dashboard")
	public String dashboard() throws Exception {
		
		return "common/dashboard";
	}

}
