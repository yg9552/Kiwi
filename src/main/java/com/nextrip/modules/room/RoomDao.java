package com.nextrip.modules.room;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class RoomDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.nextrip.modules.room.RoomMapper";
	
	public List<Room> selectList(RoomVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public Room selectOne(RoomVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	public int selectOneCount(RoomVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	public int insert(Room dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
}
