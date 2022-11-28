package com.nextrip.modules.post;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.nextrip.common.constants.Constants;
import com.nextrip.common.util.UtilDateTime;
import com.nextrip.common.util.UtilRegMod;

@Service
public class PostServiceImpl implements PostService{
	@Autowired
	PostDao dao;
	
	@Override
	public void setRegMod(Post dto) throws Exception {
		HttpServletRequest httpServletRequest = ((ServletRequestAttributes)RequestContextHolder.currentRequestAttributes()).getRequest();
		
		dto.setRegIp(UtilRegMod.getClientIp(httpServletRequest));
		dto.setRegSeq(UtilRegMod.getSessionSeq(httpServletRequest));
		dto.setRegDeviceCd(UtilRegMod.getDevice());
		dto.setRegDateTime(UtilDateTime.nowDate());
		
		dto.setModIp(UtilRegMod.getClientIp(httpServletRequest));
		dto.setModSeq(UtilRegMod.getSessionSeq(httpServletRequest));
		dto.setModDeviceCd(UtilRegMod.getDevice());
		dto.setModDateTime(UtilDateTime.nowDate());
	}
	
	public void uploadFiles(MultipartFile[] multipartFiles, Post dto, String tableName, int type, int maxNumber) throws Exception {
		
		for(int i=0; i<multipartFiles.length; i++) {
    	
			if(!multipartFiles[i].isEmpty()) {
				
				String className = dto.getClass().getSimpleName().toString().toLowerCase();		
				String fileName = multipartFiles[i].getOriginalFilename();
				String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
				String uuid = UUID.randomUUID().toString();
				String uuidFileName = uuid + "." + ext;
				String pathModule = className;
				String nowString = UtilDateTime.nowString();
				String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
				String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
				String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";
				
				File uploadPath = new File(path);
				
				if (!uploadPath.exists()) {
					uploadPath.mkdir();
				} else {
					// by pass
				}
				  
				multipartFiles[i].transferTo(new File(path + uuidFileName));
				
				dto.setPath(pathForView);
				dto.setOriginalName(fileName);
				dto.setUuidName(uuidFileName);
				dto.setExt(ext);
				dto.setSize(multipartFiles[i].getSize());
				
				dto.setTableName(tableName);
				dto.setType(type);
//				dto.setDefaultNy();
				dto.setSort(maxNumber + i);
				dto.setPseq(dto.getNxPostSeq());

				dao.insertUploaded(dto);
    		}
		}
	}

	
	@Override
	public void deleteFiles(String[] deleteSeq, String[] deletePathFile, Post dto, String tableName) throws Exception{
		
		for (int i=0; i<deleteSeq.length; i++) {
			File file = new File(Constants.UPLOAD_PATH_PREFIX_EXTERNAL + deletePathFile[i]);
            boolean result = file.delete();
            
            if(result) {
            	dto.setSeq(deleteSeq[i]);
            	dto.setTableName(tableName);
            	dao.deleteUploaded(dto);
            }
		}
	}
	
	
	@Override
	public void ueleteFiles(String[] deleteSeq, String[] deletePathFile, Post dto, String tableName) throws Exception{
		
		for (int i=0; i<deleteSeq.length; i++) {
//			File file = new File(Constants.UPLOAD_PATH_PREFIX_EXTERNAL + deletePathFile[i]);
//			boolean result = file.delete();
			
//			if(result) {
				dto.setSeq(deleteSeq[i]);
				dto.setTableName(tableName);
				dao.ueleteUploaded(dto);
//			}
		}
	}
	
	@Override
	public List<Post> postListUploaded(PostVo vo) throws Exception{
		return dao.postListUploaded(vo);
	}
	
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
		setRegMod(dto);
		int result = dao.postInsert(dto);
		uploadFiles(dto.getUploadImage(), dto, "postUploaded", 1, dto.getUploadImageMaxNumber());
		
		return result;
	}
	
	@Override
	public int postUpdate(Post dto) throws Exception{
		setRegMod(dto);
		dao.postUpdate(dto);
		deleteFiles(dto.getUploadImageDeleteSeq(), dto.getUploadImageDeletePathFile(), dto, "postUploaded");
		uploadFiles(dto.getUploadImage(), dto, "postUploaded", 1, dto.getUploadImageMaxNumber());
		return 1;
	}
	
	@Override
	public int postUelete(Post dto) throws Exception{
		setRegMod(dto);
		return dao.postUelete(dto);
	}
	
	@Override
	public int postDelete(PostVo vo) throws Exception{
		return dao.postDelete(vo);
	}
	
	@Override
	public int postViewCount(Post dto) throws Exception{
		return dao.postViewCount(dto);
	}
	
	/* 추천 s */
	
	public int postLikeCount(PostVo vo) throws Exception{
		return dao.postLikeCount(vo);
	}
	public Post postLikeList(PostVo vo) throws Exception{
		return dao.postLikeList(vo);
	}
	public int postLikeInsert(Post dto) throws Exception{
		return dao.postLikeInsert(dto);
	}
	
	public List<Post> bestLikePost(PostVo vo) throws Exception{
		return dao.bestLikePost(vo);
	}
	
	/* 추천 e */
	
	@Override
	public List<Post> bestRegionPost(PostVo vo) throws Exception{
		return dao.bestRegionPost(vo);
	}
	
	/* 찬구 s */

	@Override
	public List<Post> selectMyPostList(PostVo vo) throws Exception {
		return dao.selectMyPostList(vo);
	}

	@Override
	public int countMyPostList(PostVo vo) throws Exception {
		return dao.countMyPostList(vo);
	}
	
	/*찬구 e*/
	
}
