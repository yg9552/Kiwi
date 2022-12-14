package com.nextrip.modules.accommodation;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.nextrip.common.constants.Constants;
import com.nextrip.common.util.UtilDateTime;

@Service
public class AccommodationServiceImpl implements AccommodationService{
	
	@Autowired
	AccommodationDao dao;

	@Override
	public List<Accommodation> selectList(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public Accommodation selectOne(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCount(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(Accommodation dto) throws Exception {
		// TODO Auto-generated method stub
		dao.insert(dto);
		uploadFiles(dto.getUploadImg(), dto, "nxAccommodationUploaded", 2, dto.getUploadImgMaxNumber());
		uploadFiles(dto.getUploadImg2(), dto, "nxAccommodationUploaded", 1, dto.getUploadImgMaxNumber());
		return 1;
	}

	@Override
	public void uploadFiles(MultipartFile[] multipartFiles, Accommodation dto, String tableName, int type,
			int maxNumber) throws Exception {
		// TODO Auto-generated method stub
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
				dto.setPseq(dto.getNxAccommodationSeq());

				dao.insertUploaded(dto);
    		}
		}
	}

	@Override
	public List<Accommodation> selectListUploaded(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListUploaded(vo);
	}

	@Override
	public List<Accommodation> selectListPurchaseHistory(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListPurchaseHistory(vo);
	}

	@Override
	public Accommodation selectOnePurchaseHistory(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOnePurchaseHistory(vo);
	}

	@Override
	public int selectOneCountPurchaseHistory(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCountPurchaseHistory(vo);
	}

	@Override
	public int insertPurchaseHistory(Accommodation dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertPurchaseHistory(dto);
	}

	@Override
	public int updatePurchaseHistory(Accommodation dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.updatePurchaseHistory(dto);
	}

	@Override
	public List<Accommodation> selectListRoom(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListRoom(vo);
	}

	@Override
	public Accommodation selectOneRoom(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneRoom(vo);
	}

	@Override
	public int selectOneCountRoom(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCountRoom(vo);
	}

	@Override
	public int insertRoom(Accommodation dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertRoom(dto);
	}

	@Override
	public Accommodation selectRoomPrice(Accommodation dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectRoomPrice(dto);
	}

	@Override
	public List<Accommodation> selectUserPurchaseHistoryList(AccommodationVo vo) throws Exception {
		return dao.selectUserPurchaseHistoryList(vo);
	}

	@Override
	public Accommodation getOnePurchaseHistory(AccommodationVo vo) throws Exception {
		return dao.getOnePurchaseHistory(vo);
	}

	@Override
	public int CancelPurchaseHistory(Accommodation dto) throws Exception {
		return dao.CancelPurchaseHistory(dto);
	}

	@Override
	public int countUserPurchaseHistory(AccommodationVo vo) throws Exception {
		return dao.countUserPurchaseHistory(vo);
	}

	@Override
	public List<Accommodation> selectListReview(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListReview(vo);
	}

	@Override
	public Accommodation selectOneReivew(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneReview(vo);
	}

	@Override
	public int selectOneCountReview(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCountReview(vo);
	}

	@Override
	public int insertReview(Accommodation dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insertReview(dto);
	}

	@Override
	public int reservationConfirm(Accommodation dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.reservationConfirm(dto);
	}

	@Override
	public int reviewConfirm(Accommodation dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.reviewConfirm(dto);
	}

	@Override
	public List<Accommodation> selectListFacility(AccommodationVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListFacility(vo);
	}
	

}
