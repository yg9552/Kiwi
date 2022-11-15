package com.nextrip.modules.post;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class PostDao {
	@Inject
	@Resource(name= "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.nextrip.modules.post.PostMapper";
	
//	uploaded
	public int insertUploaded(Post dto) { 
		return sqlSession.insert("Base" + ".insertUploaded", dto); 
	}
	public int ueleteUploaded(Post dto) { 
		return sqlSession.insert("Base" + ".ueleteUploaded", dto); 
	}
	public int deleteUploaded(Post dto) { 
		return sqlSession.delete("Base" + ".deleteUploaded", dto); 
	}
	
	public List<Post> postListUploaded(PostVo vo){
		return sqlSession.selectList(namespace + ".postListUploaded", vo);
	}
	
	public List<Post> selectList(PostVo vo){
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public int selectListCount(PostVo vo) {
		return sqlSession.selectOne(namespace + ".selectListCount", vo);
	}
	public Post selectOne(PostVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public List<Post> postSelectList(PostVo vo){
		return sqlSession.selectList(namespace + ".postSelectList", vo);
	}
	public int postSelectListCount(PostVo vo) {
		return sqlSession.selectOne(namespace + ".postSelectListCount", vo);
	}
	public Post postSelectOne(PostVo vo) {
		return sqlSession.selectOne(namespace + ".postSelectOne", vo);
	}
	public int postInsert(Post dto) {
		return sqlSession.insert(namespace + ".postInsert", dto);
	}
	public int postUpdate(Post dto) {
		return sqlSession.update(namespace + ".postUpdate", dto);
	}
	public int postUelete(Post dto) {
		return sqlSession.update(namespace + ".postUelete", dto);
	}
	public int postDelete(PostVo vo) {
		return sqlSession.delete(namespace + ".postDelete", vo);
	}
	
}
