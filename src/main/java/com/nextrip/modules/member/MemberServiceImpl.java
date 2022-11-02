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

	@Override
	public Member checkId(Member dto) throws Exception {return dao.checkId(dto);}

	@Override
	public Member login(Member dto) throws Exception {return dao.login(dto);
	}

}
