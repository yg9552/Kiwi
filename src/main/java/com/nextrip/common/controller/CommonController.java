package com.nextrip.common.controller;

import java.util.List;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
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
		
		String URL = "https://www.weather.go.kr/w/weather/forecast/mid-term.do?stnId1=108";
		Connection conn = Jsoup.connect(URL);
		
		Document document = conn.get();
		
		Elements parsingDivs = document.body().select("table").select(".table-zebra"); // class가 parsingDiv인 element 찾기
		Elements parsingBody = parsingDivs.select("tr");
		Elements parsingHead = parsingDivs.select("thead");
		model.addAttribute("thead",parsingHead);
		System.out.println("서울");
		Element seoulW = parsingBody.get(2);
		model.addAttribute("seoulW", seoulW);
		System.out.println("강원도");
		Element gangW = parsingBody.get(3);
		model.addAttribute("gangW", gangW);
		System.out.println("대전");
		Element daeW = parsingBody.get(5);
		model.addAttribute("daeW", daeW);
		System.out.println("광주");
		Element gwangW = parsingBody.get(7);
		model.addAttribute("gwangW", gwangW);
		System.out.println("부산");
		Element buW = parsingBody.get(9);
		model.addAttribute("buW", buW);
		System.out.println("제주도");
		Element jejuW = parsingBody.get(11);
		model.addAttribute("jejuW", jejuW);
		
		return "user/region/regionView";
	}
	
	@RequestMapping("dashboard")
	public String dashboard() throws Exception {
		
		return "common/dashboard";
	}

}
