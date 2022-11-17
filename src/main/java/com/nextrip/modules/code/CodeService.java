package com.nextrip.modules.code;

import java.util.List;


public interface CodeService {
	public List<Code> selectlist(CodeVo vo) throws Exception;
	public Code selectOne(CodeVo vo) throws Exception;
	public Code selectOneRegion(CodeVo vo) throws Exception;
	public int selectOneCount(CodeVo vo) throws Exception;
}
