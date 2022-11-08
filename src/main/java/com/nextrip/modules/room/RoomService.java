package com.nextrip.modules.room;

import java.util.List;


public interface RoomService {
	public List<Room> selectList(RoomVo vo) throws Exception;
	public Room selectOne(RoomVo vo) throws Exception;
	public int selectOneCount(RoomVo vo) throws Exception;
	public int insert(Room dto) throws Exception;

}
