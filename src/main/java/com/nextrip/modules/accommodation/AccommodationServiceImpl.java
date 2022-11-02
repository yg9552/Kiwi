package com.nextrip.modules.accommodation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
	

}
