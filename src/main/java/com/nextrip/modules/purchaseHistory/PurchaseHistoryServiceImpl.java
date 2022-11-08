package com.nextrip.modules.purchaseHistory;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PurchaseHistoryServiceImpl implements PurchaseHistoryService{
	@Autowired
	PurchaseHistoryDao dao;

	@Override
	public List<PurchaseHistory> selectList(PurchaseHistoryVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public PurchaseHistory selectOne(PurchaseHistoryVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCount(PurchaseHistoryVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(PurchaseHistory dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int update(PurchaseHistory dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}
	

}
