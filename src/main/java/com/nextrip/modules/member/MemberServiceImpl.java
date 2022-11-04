package com.nextrip.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextrip.common.util.UtilSecurity;


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
	public Member login(MemberVo vo) throws Exception {
		vo.setPassword(UtilSecurity.encryptSha256(vo.getPassword()));
		return dao.login(vo);
	}

	@Override
	public int idOverlapCheck(Member dto) throws Exception {return dao.idOverlapCheck(dto);}

	@Override
	public int userReg(Member dto) throws Exception {
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		return dao.userReg(dto);
	}

}
