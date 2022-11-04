package com.nextrip.modules.codeGroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService{

	@Autowired
	CodeGroupDao dao;

	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCount(CodeGroupVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}
	
	
}
