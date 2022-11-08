package com.nextrip.modules.purchaseHistory;

import java.util.List;

public interface PurchaseHistoryService {
	public List<PurchaseHistory> selectList(PurchaseHistoryVo vo) throws Exception;
	public PurchaseHistory selectOne(PurchaseHistoryVo vo) throws Exception;
	public int selectOneCount(PurchaseHistoryVo vo) throws Exception;
	public int insert(PurchaseHistory dto) throws Exception;
	public int update(PurchaseHistory dto) throws Exception;
}
