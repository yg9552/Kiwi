package com.nextrip.modules.purchaseHistory;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/nextrip/region/accommodation/")
public class PurchaseHistoryController {
	@Autowired
	PurchaseHistoryServiceImpl service;
	
	@RequestMapping(value = "purchaseHistoryList")
	public String purchaseHistoryList(@ModelAttribute("vo") PurchaseHistoryVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<PurchaseHistory> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "kdmin/region/accommodation/purchaseHistoryListK";
	}
	
	@RequestMapping(value = "purchaseHistoryInst")
	public String insert(@ModelAttribute("voph") PurchaseHistoryVo voph, PurchaseHistory dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		voph.setNxPurchaseHistorySeq(dto.getNxPurchaseHistorySeq());
		redirectAttributes.addFlashAttribute("voph", voph);
		return "redirect:/nextrip/region/accommodation/accommodationPurchase";
	}
	
	@RequestMapping(value = "purchaseHistoryUpdt")
	public String update(@ModelAttribute("voph") PurchaseHistoryVo voph, PurchaseHistory dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		redirectAttributes.addFlashAttribute("vo", voph);
		return "redirect:/nextrip/region/accommodation/purchaseComplete";
	}

}
