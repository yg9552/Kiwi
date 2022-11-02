package com.nextrip.modules.accommodation;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;



public interface AccommodationService {

	public List<Accommodation> selectList(AccommodationVo vo) throws Exception;
	public Accommodation selectOne(AccommodationVo vo) throws Exception;
	public int selectOneCount(AccommodationVo vo) throws Exception;
	public int insert(Accommodation dto) throws Exception;
	public void uploadFiles(MultipartFile[] multipartFiles, Accommodation dto, String tableName, int type, int maxNumber) throws Exception;
	public List<Accommodation> selectListUploaded(AccommodationVo vo) throws Exception;
}
