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
}
