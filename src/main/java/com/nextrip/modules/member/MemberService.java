package com.nextrip.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectMemberList(MemberVo vo) throws Exception;

}
