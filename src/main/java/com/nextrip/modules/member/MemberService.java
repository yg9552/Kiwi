package com.nextrip.modules.member;

import java.util.List;

public interface MemberService {
	 
	public List<Member> selectMemberList(MemberVo vo) throws Exception;
	
	public Member checkId(Member dto) throws Exception;
	public Member login(MemberVo vo) throws Exception;
	public int idOverlapCheck(Member dto) throws Exception;
	public int userReg(Member dto) throws Exception;

}
