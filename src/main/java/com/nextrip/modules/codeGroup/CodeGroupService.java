package com.nextrip.modules.codeGroup;

import java.util.List;

public interface CodeGroupService {

	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception;
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception;
	public int selectOneCount(CodeGroupVo vo) throws Exception;
}
