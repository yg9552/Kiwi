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
	
	//PurchaseHistory
	public List<Accommodation> selectListPurchaseHistory(AccommodationVo vo) throws Exception;
	public Accommodation selectOnePurchaseHistory(AccommodationVo vo) throws Exception;
	public int selectOneCountPurchaseHistory(AccommodationVo vo) throws Exception;
	public int insertPurchaseHistory(Accommodation dto) throws Exception;
	public int updatePurchaseHistory(Accommodation dto) throws Exception;
	public int countUserPurchaseHistory(AccommodationVo vo) throws Exception;
	public List<Accommodation> selectUserPurchaseHistoryList(AccommodationVo vo) throws Exception;
	public Accommodation getOnePurchaseHistory(AccommodationVo vo) throws Exception;
	public int CancelPurchaseHistory(Accommodation dto) throws Exception;
	public int reservationConfirm(Accommodation dto) throws Exception;
	public int reviewConfirm(Accommodation dto) throws Exception;
	
	//Room
	public List<Accommodation> selectListRoom(AccommodationVo vo) throws Exception;
	public Accommodation selectOneRoom(AccommodationVo vo) throws Exception;
	public int selectOneCountRoom(AccommodationVo vo) throws Exception;
	public int insertRoom(Accommodation dto) throws Exception;
	public Accommodation selectRoomPrice(Accommodation dto) throws Exception;
	
	//Facility
	public List<Accommodation> selectListFacility(AccommodationVo vo) throws Exception;
	
	//Review
	public List<Accommodation> selectListReview(AccommodationVo vo) throws Exception;
	public Accommodation selectOneReivew(AccommodationVo vo) throws Exception;
	public int selectOneCountReview(AccommodationVo vo) throws Exception;
	public int insertReview(Accommodation dto) throws Exception;
}
