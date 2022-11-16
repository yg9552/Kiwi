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

@Controller
@RequestMapping(value = "/nextrip/")
public class CommonController {
	
	@Autowired
	AccommodationServiceImpl serviceAcmd;
	
	@RequestMapping("regionView")
	public String region(@ModelAttribute("voAcmd") AccommodationVo voAcmd, Model model) throws Exception {
		List<Accommodation> list = serviceAcmd.selectList(voAcmd);
		model.addAttribute("list", list);
		model.addAttribute("listUploaded", serviceAcmd.selectListUploaded(voAcmd));
		return "user/region/regionView";
	}

}
