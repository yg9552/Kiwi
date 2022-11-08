package com.nextrip.modules.room;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoomServiceImpl implements RoomService{

	@Autowired
	RoomDao dao;

	@Override
	public List<Room> selectList(RoomVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public Room selectOne(RoomVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCount(RoomVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public int insert(Room dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}
	
}
