package com.nextrip.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectMemberList(MemberVo vo) throws Exception;
	
	public Member checkId(Member dto) throws Exception;
	public Member login(Member dto) throws Exception;

}
