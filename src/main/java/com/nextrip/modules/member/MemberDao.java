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
	
	public Member checkId(Member dto) {return sqlSession.selectOne(namespace+".checkId", dto);}
	
	public Member login(MemberVo vo) {return sqlSession.selectOne(namespace+".login", vo);}
	
	public int idOverlapCheck(Member dto) {return sqlSession.selectOne(namespace+".idOverlapCheck", dto);}
	public int userReg(Member dto) {return sqlSession.insert(namespace+".userReg", dto);}
	
	
}
