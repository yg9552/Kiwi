package com.nextrip.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nextrip.common.constants.Constants;
import com.nextrip.modules.accommodation.Accommodation;
import com.nextrip.modules.accommodation.AccommodationServiceImpl;
import com.nextrip.modules.accommodation.AccommodationVo;
import com.nextrip.modules.post.Post;
import com.nextrip.modules.post.PostServiceImpl;
import com.nextrip.modules.post.PostVo;

@Controller
@RequestMapping
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@Autowired
	AccommodationServiceImpl service2;
	
	@Autowired
	PostServiceImpl service3;
	
	@RequestMapping(value="/nextrip/main")
	public String main(MemberVo vo, Model model) throws Exception {
		List<Member> most = service.mostPostRegion(vo);
		model.addAttribute("most", most);
		
		return "user/main";
	}
	
	@RequestMapping(value = "/")
	public String index() throws Exception {
		return "common/index";
	}
	
	@RequestMapping(value = "/nextrip/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectMemberListCount(vo));
		System.out.println(service.selectMemberListCount(vo));
		List<Member> list = service.selectMemberList(vo);
		model.addAttribute("list", list);
		
		return "kdmin/member/memberList";
	}
	
	/* 마이페이지 S */
	@RequestMapping(value="/nextrip/mypage")
	public String selectMemberList(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception {
		
		List<Member> list = service.selectMemberList(vo);
		model.addAttribute("list", list);
		
		String URL = "https://www.weather.go.kr/w/weather/forecast/mid-term.do?stnId1=108";
		Connection conn = Jsoup.connect(URL);
		
		Document document = conn.get();
		
		Elements parsingDivs = document.body().select("table").select(".table-zebra"); // class가 parsingDiv인 element 찾기
		Elements parsingBody = parsingDivs.select("tr");
		Elements parsingHead = parsingDivs.select("thead");
		System.out.println(parsingHead);
		System.out.println("서울");
		Element seoulW = parsingBody.get(2);
		model.addAttribute("seoulW", seoulW);
		
		System.out.println("강원도");
		Element gangW = parsingBody.get(3);
		model.addAttribute("gangW", gangW);
		
		System.out.println("대구");
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
		//Element parsingTitle = parsingDiv.getElementById("parsingTitle"); // id가 parsingTitle인 element 찾기
		//Element partsingContents = parsingDiv.getElementById("partsingContents"); // id가 parsingContents인 element 찾기
		
		//String title = parsingTitle.getElementsByTag("h3").get(0).text(); // 첫 번째 h3태그의 text값 찾기
		//String contents = partsingContents.getElementsByTag("p").get(0).text(); // 첫 번째 p태그의 text값 찾기
		
		//System.out.println("파싱한 제목: " + title);
		//System.out.println("파싱한 내용: " + contents);
		
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
	
	@RequestMapping(value="/nextrip/newPassword")
	public String newPassword(MemberVo vo,HttpSession httpSession) throws Exception {
		
		
		return "user/mypage/mypageNewPassword";
	}
	
	@ResponseBody
	@RequestMapping(value="/nextrip/passwordUpdt")
	public Map<String,Object> passwordUpdt(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		int result = service.passwordCheck(vo);
		if(result==1) {
			service.passwordUpdt(dto);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@RequestMapping(value="/nextrip/myReservation")
	public String selectMyReservationList(Model model,@ModelAttribute("vo") AccommodationVo vo, HttpSession httpSession) throws Exception {
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setMemberSeq(rtSeq);
		
		vo.setRowNumToShow(3);
		vo.setParamsPaging(service2.countUserPurchaseHistory(vo));
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
		return "redirect:/nextrip/main";
	}
	
	@RequestMapping(value="/nextrip/mypageReservationView")
	public String mypageReservationView(Model model,@ModelAttribute("vo") AccommodationVo vo, HttpSession httpSession) throws Exception {
		Accommodation result = service2.getOnePurchaseHistory(vo);
		model.addAttribute("item", result);
		
		return "user/mypage/mypageReservationView";
	}
	
	@RequestMapping(value="/nextrip/CancelPurchaseHistory")
	public String CancelPurchaseHistory(@ModelAttribute("vo") AccommodationVo vo, Accommodation dto, RedirectAttributes redirectAttributes) throws Exception {
		service2.CancelPurchaseHistory(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/nextrip/myReservation";
	}

	@RequestMapping(value = "/nextrip/reservationConfirm")
	public String reservationConfirm(@ModelAttribute("vo") AccommodationVo vo, Accommodation dto, RedirectAttributes redirectAttributes) throws Exception {
		service2.reservationConfirm(dto);
		redirectAttributes.addFlashAttribute("vo", vo);
		return "redirect:/nextrip/myReservation";
	}
	
	@RequestMapping(value="/nextrip/mypagePostRecord")
	public String mypagePostRecord(@ModelAttribute("vo") PostVo vo, Model model, HttpSession httpSession) throws Exception {
		String rtSeq = (String) httpSession.getAttribute("sessSeq");
		vo.setMemberSeq(rtSeq);
		
		vo.setParamsPaging(service3.countMyPostList(vo));
		
		List<Post> result = service3.selectMyPostList(vo);
		model.addAttribute("list", result);
		
		return "user/mypage/mypagePostRecord";
	}
	
	/* 마이페이지 E */
	
	@RequestMapping(value = "/nextrip/purchaseHistoryListK")
	public String purchaseHistoryList(@ModelAttribute("vo") AccommodationVo vo, Model model) throws Exception {
		
		vo.setParamsPaging(service2.selectOneCountPurchaseHistory(vo));
		List<Accommodation> list = service2.selectListPurchaseHistory(vo);
		model.addAttribute("list", list);
		return "kdmin/region/accommodation/purchaseHistoryListK";
	}
	
	@RequestMapping(value="/nextrip/login")
	public String login() throws Exception {
		return "user/login";
	}
	
	@RequestMapping(value="/nextrip/findAccount")
	public String findAccount() throws Exception {
		
		return "user/findAccount" ;
	}
	
	@ResponseBody
	@RequestMapping(value="/nextrip/findId")
	public Map<String, Object> findId(MemberVo vo) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		Member result = service.selectId(vo);
		
		if (result == null) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
			returnMap.put("id", result.getId());
		}
		
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/nextrip/selectSeqByIdEmail")
	public Map<String,Object> selectSeqByIdEmail(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		int result = service.selectSeqByIdEmail(vo);
		if(result==1) {
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value="/nextrip/passwordRefresh")
	public Map<String,Object> passwordRefresh(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		service.passwordRefresh(dto);
		return returnMap;
	}
	
	@RequestMapping(value="/nextrip/kdminLogin")
	public String kdminLogin() throws Exception {
		return "kdmin/kdminLogin";
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
	
	@ResponseBody
	@RequestMapping(value="/nextrip/emailOverlapCheck")
	public Map<String, Object> emailOverlapCheck(Member dto) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		int result = service.emailOverlapCheck(dto);
		
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
	
	@ResponseBody
	@RequestMapping(value = "/nextrip/kakaoLoginProc")
	public Map<String, Object> kakaoLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
	    
		Member kakaoLogin = service.snsLoginCheck(dto);
		
		 System.out.println("test : " + dto.getToken());
		
		if (kakaoLogin == null) {
			service.kakaoInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
			session(kakaoLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "naverLoginProc")
	public Map<String, Object> naverLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
	    
		Member naverLogin = service.snsLoginCheck(dto);
		
		if (naverLogin == null) {
			service.naverInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			// session(dto.getSeq(), dto.getId(), dto.getName(), dto.getEmail(), dto.getUser_div(), dto.getSnsImg(), dto.getSns_type(), httpSession);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			// session(kakaoLogin.getSeq(), kakaoLogin.getId(), kakaoLogin.getName(), kakaoLogin.getEmail(), kakaoLogin.getUser_div(), kakaoLogin.getSnsImg(), kakaoLogin.getSns_type(), httpSession);
			session(naverLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}

	 public void session(Member dto, HttpSession httpSession) {
	     httpSession.setAttribute("sessSeq", dto.getMemberSeq());    
	     httpSession.setAttribute("sessId", dto.getId());
	     httpSession.setAttribute("sessNickname", dto.getNickname());
	     httpSession.setAttribute("sessEmail", dto.getEmail());
	 }

}
