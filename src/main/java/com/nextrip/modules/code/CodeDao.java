package com.nextrip.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.nextrip.modules.code.CodeMapper";
	public List<Code> selectList(CodeVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public Code selectOne(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public Code selectOneRegion(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneRegion", vo);
	}
	public int selectOneCount(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	

	public int codeInsert(Code dto) throws Exception{
		return sqlSession.insert(namespace + ".codeInsert", dto);
	}
	public int codeUpdate(Code dto) throws Exception{
		return sqlSession.update(namespace + ".codeUpdate", dto);
	}
	public int codeUelete(Code dto) throws Exception{
		return sqlSession.update(namespace + ".codeUelete", dto);
	}
	public int codeDelete(CodeVo vo) throws Exception{
		return sqlSession.delete(namespace + "codeDelete", vo);
	}
	
//	for cache
	public List<Code> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }

}
