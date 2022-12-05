package com.nextrip.modules.member;

import java.util.List;

public interface MemberService {
	 
	public List<Member> selectMemberList(MemberVo vo) throws Exception;
	public int selectOneCount(MemberVo vo) throws Exception;
	public Member selectOneMember(MemberVo vo) throws Exception;
	public int memberUpdt(Member dto) throws Exception;
	public int memberVele(Member dto) throws Exception;
	public int passwordCheck(MemberVo vo) throws Exception;
	public int passwordUpdt(Member dto) throws Exception;
	public int selectSeqByIdEmail(MemberVo vo) throws Exception;
	public int passwordRefresh(Member dto) throws Exception;
	
	public Member checkId(Member dto) throws Exception;
	public Member snsLoginCheck(Member dto) throws Exception;
	public Member login(MemberVo vo) throws Exception;
	public Member selectId(MemberVo vo) throws Exception;
	public int idOverlapCheck(Member dto) throws Exception;
	public int emailOverlapCheck(Member dto) throws Exception;
	public int userReg(Member dto) throws Exception;
	public int kakaoInst(Member dto) throws Exception;
	
	//휘재 s
	public List<Member> mostPostRegion(MemberVo vo) throws Exception;
	//휘재 e

}
