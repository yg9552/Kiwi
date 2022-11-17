package com.nextrip.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nextrip.common.constants.Constants;
import com.nextrip.modules.accommodation.Accommodation;
import com.nextrip.modules.accommodation.AccommodationServiceImpl;
import com.nextrip.modules.accommodation.AccommodationVo;

@Controller
@RequestMapping
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@Autowired
	AccommodationServiceImpl service2;
	
	@RequestMapping(value="/nextrip/main")
	public String main() throws Exception {
		
		return "user/main";
	}
	
	@RequestMapping(value = "/")
	public String index() throws Exception {
		return "common/index";
	}
	
	/* 마이페이지 S */
	@RequestMapping(value="/nextrip/mypage")
	public String selectMemberList(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception {
		
		List<Member> list = service.selectMemberList(vo);
		model.addAttribute("list", list);
		
		return "user/mypage/mypage";
	}
	
	@RequestMapping(value="/nextrip/memberModification")
	public String memberModification(HttpServletRequest request, Model model,@ModelAttribute("vo") MemberVo vo, Member dto) throws Exception {
//		String rtSeq = (String) httpSession.getAttribute("sessSeq");
//		vo.setMemberSeq(rtSeq);
		vo.setMemberSeq((String)request.getSession().getAttribute("sessSeq"));
		Member result = service.selectOneMember(vo);
		model.addAttribute("item", result);
		
		return "user/mypage/mypageMemberModification";
	}
	
	@RequestMapping(value="/nextrip/myReservation")
	public String selectMyReservationList(Model model,@ModelAttribute("vo") AccommodationVo vo, HttpSession httpSession) throws Exception {
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setMemberSeq(rtSeq);
		
		List<Accommodation> list = service2.selectUserPurchaseHistoryList(vo);
		model.addAttribute("list", list);
		
		model.addAttribute("listUploaded", service2.selectListUploaded(vo));
		
		return "user/mypage/mypageReservationRecord";
	}
	
	@RequestMapping(value="/nextrip/memberUpdt")
	public String memberUpdt(HttpSession httpSession, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		dto.setMemberSeq(rtSeq);
		service.memberUpdt(dto);
		httpSession.setAttribute("sessNickname", dto.getNickname());
		
		return "redirect:/nextrip/memberModification";
	}
	
	@RequestMapping(value="/nextrip/memberVele")
	public String memberVele(HttpSession httpSession, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		dto.setMemberSeq(rtSeq);
		service.memberVele(dto);
		httpSession.invalidate();
		return "redirect:/nextrip/mypage";
	}
	
	@RequestMapping(value="/nextrip/mypageReservationView")
	public String mypageReservationView(Model model,@ModelAttribute("vo") AccommodationVo vo, HttpSession httpSession) throws Exception {
		Accommodation result = service2.getOnePurchaseHistory(vo);
		model.addAttribute("item", result);
		
		return "user/mypage/mypageReservationView";
	}
	
	/* 마이페이지 E */
	
	@RequestMapping(value="/nextrip/login")
	public String login() throws Exception {
		return "user/login";
	}
	
	@ResponseBody
	@RequestMapping(value="/nextrip/loginproc")
	public Map<String, Object> loginproc(Member dto,@ModelAttribute("vo") MemberVo vo, HttpSession httpSession) throws Exception{
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtMember = service.checkId(dto);

		if (rtMember != null) {
			Member rtMember2 = service.login(vo);

			if (rtMember2 != null) {
				
				System.out.println("memberSeq값: "+rtMember2.getMemberSeq());
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getMemberSeq());
				httpSession.setAttribute("sessId", rtMember2.getId());
				httpSession.setAttribute("sessNickname", rtMember2.getNickname());

				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "/nextrip/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
//		UtilCookie.deleteCookie();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	@RequestMapping(value="/nextrip/memberRegistration")
	public String memberRegistration() throws Exception {
		
		return "user/memberRegistration";
	}
	
	@ResponseBody
	@RequestMapping(value="/nextrip/idOverlapCheck")
	public Map<String, Object> idOverlapCheck(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		int result = service.idOverlapCheck(dto);
		
		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		
		return returnMap;
	}
	
	@RequestMapping(value="/nextrip/userReg")
	public String userReg(Member dto) throws Exception{
		System.out.println("controller 입성");
		service.userReg(dto);
		return "redirect:/nextrip/login";
	}

}
