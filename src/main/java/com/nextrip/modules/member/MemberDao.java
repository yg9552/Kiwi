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
	
	
	
}
