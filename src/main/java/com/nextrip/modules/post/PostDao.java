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
