package com.nextrip.modules.accommodation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/acmd/")
public class AccommodationController {

	@Autowired
	AccommodationServiceImpl service;
	
	@RequestMapping(value = "acmdList")
	public String acmdList(@ModelAttribute("vo") AccommodationVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Accommodation> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "user/accommodation/acmdList";
	}
}
