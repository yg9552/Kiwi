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
	public Member selectOneMember(MemberVo vo) throws Exception {
		return dao.selectOneMember(vo);
	}
	@Override
	public int memberUpdt(Member dto) throws Exception {return dao.memberUpdt(dto);}
	@Override
	public int memberVele(Member dto) throws Exception {return dao.memberVele(dto);}

	@Override
	public Member checkId(Member dto) throws Exception {return dao.checkId(dto);}
	
	@Override
	public Member selectId(MemberVo vo) throws Exception {return dao.selectId(vo);}
	
	@Override
	public int selectSeqByIdEmail(MemberVo vo) throws Exception {return dao.selectSeqByIdEmail(vo);}
	
	@Override
	public int passwordRefresh(Member dto) throws Exception {
		dto.setNewPass(UtilSecurity.encryptSha256(dto.getNewPass()));
		return dao.passwordRefresh(dto);
	}

	@Override
	public Member login(MemberVo vo) throws Exception {
		vo.setPassword(UtilSecurity.encryptSha256(vo.getPassword()));
		return dao.login(vo);
	}

	@Override
	public int idOverlapCheck(Member dto) throws Exception {return dao.idOverlapCheck(dto);}

	@Override
	public int emailOverlapCheck(Member dto) throws Exception {return dao.emailOverlapCheck(dto);}
	
	@Override
	public int userReg(Member dto) throws Exception {
		dto.setPassword(UtilSecurity.encryptSha256(dto.getPassword()));
		return dao.userReg(dto);
	}
	@Override
	public int passwordCheck(MemberVo vo) throws Exception {
		vo.setPassword(UtilSecurity.encryptSha256(vo.getPassword()));
		return dao.passwordCheck(vo);
	}
	@Override
	public int passwordUpdt(Member dto) throws Exception {
		dto.setNewPass(UtilSecurity.encryptSha256(dto.getNewPass()));
		return dao.passwordUpdt(dto);
	}
	

	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}
	@Override
	public Member snsLoginCheck(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.snsLoginCheck(dto);
	}
	@Override
	public int kakaoInst(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.kakaoInst(dto);
	}
	@Override
	public int naverInst(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.naverInst(dto);
	}
	//휘재 s
	@Override
	public List<Member> mostPostRegion(MemberVo vo) throws Exception{
		return dao.mostPostRegion(vo);
	}
	//휘재 e

}
