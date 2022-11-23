package com.nextrip.modules.accommodation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nextrip.common.constants.Constants;
import com.nextrip.modules.room.RoomVo;

@Controller
@RequestMapping(value = "/nextrip/region/accommodation/")
public class AccommodationController {

	@Autowired
	AccommodationServiceImpl service;
	
	@RequestMapping(value = "accommodationList")
	public String acmdList(@ModelAttribute("vo") AccommodationVo vo, Model model, @ModelAttribute("vorv") AccommodationVo vorv) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		vorv.setParamsPaging(service.selectOneCountReview(vorv));
		List<Accommodation> list = service.selectList(vo);
		model.addAttribute("list", list);
		List<Accommodation> listR = service.selectListRoom(vo);
		model.addAttribute("listR", listR);
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
		vo.setParamsPaging(service.selectOneCountReview(vo));
		
		Accommodation item = service.selectOne(vo);
		List<Accommodation> listR = service.selectListRoom(vo);
		List<Accommodation> listReview = service.selectListReview(vo);
		model.addAttribute("item", item);
		model.addAttribute("listReview" ,listReview);
		model.addAttribute("listR", listR);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		return "user/region/accommodation/accommodationView";
	}
	
	@RequestMapping(value = "accommodationPurchase")
	public String acccommodationPurchase(@ModelAttribute("vo") AccommodationVo vo, Model model) throws Exception {
		Accommodation item = service.selectOne(vo);
		Accommodation itemph = service.selectOnePurchaseHistory(vo);
		List<Accommodation> listr = service.selectListRoom(vo);
		model.addAttribute("item", item);
		model.addAttribute("itemph", itemph);
		model.addAttribute("listr", listr);
		model.addAttribute("listUploaded", service.selectListUploaded(vo));
		
		return "user/region/accommodation/accommodationPurchase";
	}
	
	@RequestMapping(value = "purchaseHistoryList")
	public String purchaseHistoryList(@ModelAttribute("vo") AccommodationVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service.selectOneCount(vo));
		List<Accommodation> list = service.selectList(vo);
		model.addAttribute("list", list);
		return "kdmin/region/accommodation/purchaseHistoryListK";
	}
	
	@RequestMapping(value = "purchaseHistoryInst")
	public String insertPurchaseHistory(@ModelAttribute("vo") AccommodationVo vo, Accommodation dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insertPurchaseHistory(dto);
		vo.setNxPurchaseHistorySeq(dto.getNxPurchaseHistorySeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/nextrip/region/accommodation/accommodationPurchase";
	}
	
	@RequestMapping(value = "purchaseHistoryUpdt")
	public String updatePurchaseHistory(@ModelAttribute("vo") AccommodationVo vo, Accommodation dto, RedirectAttributes redirectAttributes) throws Exception {
		service.updatePurchaseHistory(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/nextrip/region/accommodation/accommodationList";
	}
	
	@ResponseBody
	@RequestMapping(value = "selectRoomPrice")
	public Map<String, Object> selectRoomPrice(Accommodation dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Accommodation result = service.selectRoomPrice(dto);
		
		if (result == null) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
			returnMap.put("price", result.getPrice());
		}
		return returnMap;
	}
	
	@RequestMapping(value = "reviewInst")
	public String insertReview(@ModelAttribute("vo") AccommodationVo vo, Accommodation dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insertReview(dto);
		vo.setNxAccommodationReviewSeq(dto.getNxAccommodationReviewSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/nextrip/region/accommodation/accommodationPurchase";
	}
	
}


