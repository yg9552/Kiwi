package com.nextrip.modules.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostServiceImpl implements PostService{
	@Autowired
	PostDao dao;
	
	@Override
	public List<Post> selectList(PostVo vo) throws Exception{
		return dao.selectList(vo);
	}
	
	@Override
	public int selectListCount(PostVo vo) throws Exception{
		return dao.selectListCount(vo);
	}
	
	@Override
	public Post selectOne(PostVo vo) throws Exception{
		return dao.selectOne(vo);
	}
	
	@Override
	public List<Post> postSelectList(PostVo vo) throws Exception{
		return dao.postSelectList(vo);
	}
	
	@Override
	public int postSelectListCount(PostVo vo) throws Exception{
		return dao.postSelectListCount(vo);
	}
	
	@Override
	public Post postSelectOne(PostVo vo) throws Exception{
		return dao.postSelectOne(vo);
	}
	
	@Override
	public int postInsert(Post dto) throws Exception{
		return dao.postInsert(dto);
	}
	
	@Override
	public int postUpdate(Post dto) throws Exception{
		return dao.postUpdate(dto);
	}
	
	@Override
	public int postUelete(Post dto) throws Exception{
		return dao.postUelete(dto);
	}
	
	@Override
	public int postDelete(PostVo vo) throws Exception{
		return dao.postDelete(vo);
	}
	
}
