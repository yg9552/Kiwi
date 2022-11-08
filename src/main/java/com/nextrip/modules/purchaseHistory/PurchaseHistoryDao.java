package com.nextrip.modules.purchaseHistory;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PurchaseHistoryDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.nextrip.modules.purchaseHistory.PurchaseHistoryMapper";
	
	public List<PurchaseHistory> selectList(PurchaseHistoryVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public PurchaseHistory selectOne(PurchaseHistoryVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public int selectOneCount(PurchaseHistoryVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	public int insert(PurchaseHistory dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	public int update(PurchaseHistory dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
}
