package com.nextrip.modules.accommodation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nextrip.common.constants.Constants;

@Controller
@RequestMapping(value = "/region/accommodation")
public class AccommodationController {

	@Autowired
	AccommodationServiceImpl service;
	
	@RequestMapping(value = "accommodationList")
	public String acmdList(@ModelAttribute("vo") AccommodationVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Accommodation> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "user/region/accommodation/accommodationList";
	}
	
	@RequestMapping(value = "accommodationForm")
	public String accommodationForm(@ModelAttribute("vo") AccommodationVo vo, Model model, Accommodation dto) throws Exception {
		
//		if (vo.getNxAccommodationSeq().equals("0") || vo.getNxAccommodationSeq().equals("")) {
//			insert
//		} else {
//			update
			Accommodation item = service.selectOne(vo);
			model.addAttribute("item", item);
			model.addAttribute("listUploaded", service.selectListUploaded(vo));
//		}
		
		return "user/region/accommodation/accommodationForm";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "accommodationInst")
	public String insert(@ModelAttribute("vo") AccommodationVo vo, Accommodation dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		
		vo.setNxAccommodationSeq(dto.getNxAccommodationSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		if (Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/region/accommodation/accommodationForm";
		} else {
			return "redirect:/region/accommodation/accommodationList";
		}
	}
}
