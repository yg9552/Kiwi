package com.nextrip.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name ="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace="com.nextrip.modules.member.MemberMapper";
	
	public List<Member> selectMemberList(MemberVo vo) {return sqlSession.selectList(namespace+".selectMemberList", vo);}
	public Member selectOneMember(MemberVo vo) {return sqlSession.selectOne(namespace+".selectOneMember", vo);}
	public int memberUpdt(Member dto) {return sqlSession.update(namespace+".memberUpdt", dto);}
	public int memberVele(Member dto) {return sqlSession.update(namespace+".memberVele", dto);}
	public int passwordCheck(MemberVo vo) {return sqlSession.selectOne(namespace+".passwordCheck", vo);}
	public int passwordUpdt(Member dto) {return sqlSession.update(namespace+".passwordUpdt", dto);}
	public int selectOneCount(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectMemberListCount", vo);}
	
	public Member checkId(Member dto) {return sqlSession.selectOne(namespace+".checkId", dto);}
	public Member snsLoginCheck(Member dto) { return sqlSession.selectOne(namespace + ".snsLoginCheck", dto); }
	public Member login(MemberVo vo) {return sqlSession.selectOne(namespace+".login", vo);}
	
	public int idOverlapCheck(Member dto) {return sqlSession.selectOne(namespace+".idOverlapCheck", dto);}
	public int emailOverlapCheck(Member dto) {return sqlSession.selectOne(namespace+".emailOverlapCheck", dto);}
	public int userReg(Member dto) {return sqlSession.insert(namespace+".userReg", dto);}
	public int kakaoInst(Member dto) { return sqlSession.insert(namespace + ".kakaoInst", dto); }
	//휘재 s
	public List<Member> mostPostRegion(MemberVo vo) throws Exception{
		return sqlSession.selectList(namespace + ".mostPostRegion", vo);
	}
	//휘재 e

	
}
