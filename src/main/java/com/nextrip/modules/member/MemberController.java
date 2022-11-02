package com.nextrip.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nextrip.common.constants.Constants;

@Controller
@RequestMapping
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value="/nextrip/mypage")
	public String selectMemberList(Model model,@ModelAttribute("vo") MemberVo vo) throws Exception {
		
		List<Member> list = service.selectMemberList(vo);
		model.addAttribute("list", list);
		
		return "user/mypage/mypage";
	}
	
	@RequestMapping(value="/nextrip/login")
	public String login() throws Exception {
		return "user/login";
	}
	
	@ResponseBody
	@RequestMapping(value="/nextrip/loginproc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception{
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.checkId(dto);
		
		if(rtMember !=null) {
			
			Member rtMember2 = service.login(dto);
			
			if (rtMember2 != null) {
				
//				if(dto.getAutoLogin() == true) {
//					UtilCookie.createCookie(Constants.COOKIE_NAME_SEQ, rtMember2.getIfmmSeq(), Constants.COOKIE_DOMAIN, Constants.COOKIE_PATH, Constants.COOKIE_MAXAGE);
//				} else {
//					// by pass
//				}
				
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getMemberSeq());
				httpSession.setAttribute("sessId", rtMember2.getId());

				rtMember2.setLgResultNy(1);
//				service.insertLogLogin(rtMember2);

//				Date date = rtMember2.getIfmmPwdModDate();
//				LocalDateTime ifmmPwdModDateLocalDateTime = LocalDateTime.ofInstant(date.toInstant(), ZoneId.systemDefault());
//
//				if (ChronoUnit.DAYS.between(ifmmPwdModDateLocalDateTime, UtilDateTime.nowLocalDateTime()) > Constants.PASSWOPRD_CHANGE_INTERVAL) {
//					returnMap.put("changePwd", "true");
//				}

				returnMap.put("rt", "success");
			} else {
				dto.setMemberSeq(rtMember.getMemberSeq());
				dto.setLgResultNy(0);
//				service.insertLogLogin(dto);

				returnMap.put("rt", "fail");
			}
		}	else {
			dto.setLgResultNy(0);
//			service.insertLogLogin(dto);

			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

}
