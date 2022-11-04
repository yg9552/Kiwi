package com.nextrip.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CodeServiceImpl implements CodeService {

	@Autowired
	CodeDao dao;

	@Override
	public List<Code> selectlist(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}
	
	//cache
		@PostConstruct
		public void selectListCachedCodeArrayList() throws Exception {
			List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
//			codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
			Code.cachedCodeArrayList.clear(); 
			Code.cachedCodeArrayList.addAll(codeListFromDb);
			System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
		}
		
		public static List<Code> selectListCachedCode(String codeGroupSeq) throws Exception {
			List<Code> rt = new ArrayList<Code>();
			for(Code codeRow : Code.cachedCodeArrayList) {
				if (codeRow.getCodeGroupSeq().equals(codeGroupSeq)) {
					rt.add(codeRow);
				} else {
					// by pass
				}
			}
			return rt;
		}
		
		public static String selectOneCachedCode(int code) throws Exception {
			String rt = "";
			for(Code codeRow : Code.cachedCodeArrayList) {
				if (codeRow.getCodeSeq().equals(Integer.toString(code))) {
					rt = codeRow.getName();
				} else {
					// by pass
				}
			}
			return rt;
		}
		
		public static void clear() throws Exception {
			Code.cachedCodeArrayList.clear();
		}
}
