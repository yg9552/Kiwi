package com.nextrip.modules.codeGroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.nextrip.modules.codeGroup.CodeGroupMapper";
	public List<CodeGroup> selectList(CodeGroupVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public CodeGroup selectOne(CodeGroupVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public int selectOneCount(CodeGroupVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
}
