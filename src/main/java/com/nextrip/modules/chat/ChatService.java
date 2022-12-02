package com.nextrip.modules.chat;
//본인에게 맞는 package로 변경하도록 합니다.

import java.util.List;

public interface ChatService {
	
	public List<Chat> selectChatListFromOne(Integer seq) throws Exception;
	public List<Chat> createChat(int chatUserA, int chatUserB) throws Exception;
	public int chatOverlapCheck(int chatUserA, int chatUserB) throws Exception;
}