package com.nextrip.modules.chat; 
//본인에게 맞는 package로 변경하도록 합니다.

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping /* (value="/chat/") */
public class ChatController {
	
	@Autowired
	ChatServiceImpl service;

	
	@RequestMapping(value="/nextrip/mypageChat")
	public String chat(HttpSession httpSession,Model model) throws Exception {
				
		List<Chat> list = service.selectChatListFromOne(Integer.parseInt(httpSession.getAttribute("sessSeq").toString()));
		
		model.addAttribute("list", list);
		
		return "/user/mypage/mypageChat";
		//본인에게 맞는 jsp경로로 변경하도록 합니다.
	}

	@ResponseBody
	@RequestMapping(value="/chat/insChat")
	public Map<String,Object> insChat(HttpSession httpSession,Chat dto) throws Exception {
		
		Map<String,Object> result = new HashMap<String,Object>();
		
		List<Chat> newChat = service.createChat(Integer.parseInt(httpSession.getAttribute("sessSeq").toString()),dto.getCuMemberSeq());
		
		if(newChat != null) {
			result.put("rt", "success");
			result.put("newChat", newChat);
		}
		else
			result.put("rt", "fail");
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/chat/chatOverlapCheck")
	public Map<String,Object> chatOverlapCheck(HttpSession httpSession,Chat dto, Model model) throws Exception {
		
		Map<String,Object> result = new HashMap<String,Object>();
		
		int overlapCheck = service.chatOverlapCheck(Integer.parseInt(httpSession.getAttribute("sessSeq").toString()), dto.getPostMemberSeq());
		
		if(overlapCheck != 0) {
			result.put("rt", "check");
		}
		else
			result.put("rt", "null");
		return result;
	}
	
}