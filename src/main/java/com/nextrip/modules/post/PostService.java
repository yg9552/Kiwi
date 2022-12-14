package com.nextrip.modules.post;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;


public interface PostService {
	
	// uploaded
	public void setRegMod(Post dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Post dto, String tableName, int type, int maxNumber) throws Exception;
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Post dto, String tableName) throws Exception;
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Post dto, String tableName) throws Exception;
	List<Post> postListUploaded(PostVo vo) throws Exception;
	
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
	public int postViewCount(Post dto) throws Exception;
	
	/* 추천 s */
	
	public int postLikeCount(PostVo vo) throws Exception;
	public Post postLikeList(PostVo vo) throws Exception;
	public int postLikeInsert(Post dto) throws Exception;
	public List<Post> bestLikePost(PostVo vo) throws Exception;
	/* 추천 e */
	
	public List<Post> bestRegionPost(PostVo vo) throws Exception;
	
	public List<Post> selectMyPostList(PostVo vo) throws Exception;
	public int countMyPostList(PostVo vo) throws Exception;
	
}
