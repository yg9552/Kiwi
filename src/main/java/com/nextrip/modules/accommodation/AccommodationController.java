package com.nextrip.modules.accommodation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nextrip.common.constants.Constants;
import com.nextrip.modules.purchaseHistory.PurchaseHistory;
import com.nextrip.modules.purchaseHistory.PurchaseHistoryServiceImpl;
import com.nextrip.modules.purchaseHistory.PurchaseHistoryVo;
import com.nextrip.modules.room.Room;
import com.nextrip.modules.room.RoomServiceImpl;
import com.nextrip.modules.room.RoomVo;

@Controller
@RequestMapping(value = "/nextrip/region/accommodation/")
public class AccommodationController {

	@Autowired
	AccommodationServiceImpl service;
	@Autowired
	RoomServiceImpl serviceR;
	@Autowired
	PurchaseHistoryServiceImpl serviceph;
	
	@RequestMapping(value = "accommodationList")
	public String acmdList(@ModelAttribute("vo") AccommodationVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Accommodation> list = service.selectList(vo);
		model.addAttribute("list", list);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "user/region/accommodation/accommodationList";
	}
	
	@RequestMapping(value = "accommodationListK")
	public String acmdListK(@ModelAttribute("vo") AccommodationVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Accommodation> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "kdmin/region/accommodation/accommodationListK";
	}
	
	@RequestMapping(value = "accommodationForm")
	public String accommodationForm(@ModelAttribute("vo") AccommodationVo vo, Model model, Accommodation dto) throws Exception {
		
		if (vo.getNxAccommodationSeq().equals("0") || vo.getNxAccommodationSeq().equals("")) {
//			insert
		} else {
//			update
			Accommodation item = service.selectOne(vo);
			model.addAttribute("item", item);
			model.addAttribute("listUploaded", service.selectListUploaded(vo));
		}
		
		return "user/region/accommodation/accommodationForm";
	}
	
	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "accommodationInst")
	public String insert(@ModelAttribute("vo") AccommodationVo vo, Accommodation dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		
		vo.setNxAccommodationSeq(dto.getNxAccommodationSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		if (Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/nextrip/region/accommodation/accommodationForm";
		} else {
			return "redirect:/nextrip/region/accommodation/accommodationListK";
		}
	}
	
	@RequestMapping(value = "accommodationView")
	public String accommodationView(@ModelAttribute("vo") AccommodationVo vo, Model model, RoomVo voR) throws Exception {
		Accommodation item = service.selectOne(vo);
		List<Room> listR = serviceR.selectList(voR);
		model.addAttribute("item", item);
		model.addAttribute("listR", listR);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "user/region/accommodation/accommodationView";
	}
	
	@RequestMapping(value = "accommodationPurchase")
	public String acccommodationPurchase(@ModelAttribute("vo") AccommodationVo vo, Model model, @ModelAttribute("voph") PurchaseHistoryVo voph) throws Exception {
		Accommodation item = service.selectOne(vo);
		PurchaseHistory itemph = serviceph.selectOne(voph);
		model.addAttribute("item", item);
		model.addAttribute("itemph", itemph);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "user/region/accommodation/accommodationPurchase";
	}
}
