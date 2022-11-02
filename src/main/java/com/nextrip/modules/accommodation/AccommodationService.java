package com.nextrip.modules.accommodation;

import java.util.List;

public interface AccommodationService {

	public List<Accommodation> selectList(AccommodationVo vo) throws Exception;
	public Accommodation selectOne(AccommodationVo vo) throws Exception;
	public int selectOneCount(AccommodationVo vo) throws Exception;
}
