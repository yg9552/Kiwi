package com.nextrip.modules.post;

import java.util.List;

public interface PostService {
	
	public List<Post> selectList(PostVo vo) throws Exception;
	public int selectListCount(PostVo vo) throws Exception;
	public Post selectOne(PostVo vo) throws Exception;
	public List<Post> postSelectList(PostVo vo) throws Exception;
	public int postSelectListCount(PostVo vo) throws Exception;
	public Post postSelectOne(PostVo vo) throws Exception;
	public int postInsert(Post dto) throws Exception;
	public int postUpdate(Post dto) throws Exception;
	public int postUelete(Post dto) throws Exception;
	public int postDelete(PostVo vo) throws Exception;
	
}
