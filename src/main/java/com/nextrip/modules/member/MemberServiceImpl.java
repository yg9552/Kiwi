package com.nextrip.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;

	@Override
	public List<Member> selectMemberList(MemberVo vo) throws Exception {
		return dao.selectMemberList(vo);
	}

}
