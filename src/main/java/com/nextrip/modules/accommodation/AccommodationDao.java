package com.nextrip.modules.accommodation;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class AccommodationDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.nextrip.modules.accommodation.AccommodationMapper";
	
	public List<Accommodation> selectList(AccommodationVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public Accommodation selectOne(AccommodationVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public int selectOneCount(AccommodationVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	public int insert(Accommodation dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	//	uploaded
	public int insertUploaded(Accommodation dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	public List<Accommodation> selectListUploaded(AccommodationVo vo) {
		return sqlSession.selectList(namespace + ".selectListUploaded", vo);
	}
	
	//PurchaseHistory
	public List<Accommodation> selectListPurchaseHistory(AccommodationVo vo) {
		return sqlSession.selectList(namespace + ".selectListPurchaseHistory", vo);
	}
	public Accommodation selectOnePurchaseHistory(AccommodationVo vo) {
		return sqlSession.selectOne(namespace + ".selectOnePurchaseHistory", vo);
	}
	public int selectOneCountPurchaseHistory(AccommodationVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCountPurchaseHistory", vo);
	}
	public int insertPurchaseHistory(Accommodation dto) {
		return sqlSession.insert(namespace + ".insertPurchaseHistory", dto);
	}
	public int updatePurchaseHistory(Accommodation dto) {
		return sqlSession.update(namespace + ".updatePurchaseHistory", dto);
	}
	public List<Accommodation> selectUserPurchaseHistoryList(AccommodationVo vo) {
		return sqlSession.selectList(namespace+".selectUserPurchaseHistoryList", vo);
	}
	public Accommodation getOnePurchaseHistory(AccommodationVo vo) {
		return sqlSession.selectOne(namespace+".getOnePurchaseHistory", vo);
	}
	
	//Room
	public List<Accommodation> selectListRoom(AccommodationVo vo) {
		return sqlSession.selectList(namespace + ".selectListRoom", vo);
	}
	public Accommodation selectOneRoom(AccommodationVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneRoom", vo);
	}
	public int selectOneCountRoom(AccommodationVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCountRoom", vo);
	}
	public int insertRoom(Accommodation dto) {
		return sqlSession.insert(namespace + ".insertRoom", dto);
	}
	public Accommodation selectRoomPrice(Accommodation dto) {
		return sqlSession.selectOne(namespace + ".selectRoomPrice", dto);
	}
}
