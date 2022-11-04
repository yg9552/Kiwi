package com.nextrip.modules.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostServiceImpl implements PostService{
	@Autowired
	PostDao dao;
	
	
	public List<Post> postSelectList(PostVo vo) throws Exception{
		return dao.postSelectList(vo);
	}
	public Post postSelectOne(PostVo vo) throws Exception{
		return dao.postSelectOne(vo);
	}
	public int postInsert(Post dto) throws Exception{
		return dao.postInsert(dto);
	}
	public int postUpdate(Post dto) throws Exception{
		return dao.postUpdate(dto);
	}
	public int postUelete(Post dto) throws Exception{
		return dao.postUelete(dto);
	}
	public int postDelete(PostVo vo) throws Exception{
		return dao.postDelete(vo);
	}
	
}
