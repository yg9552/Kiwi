package com.nextrip.modules.code;

import java.util.ArrayList;
import java.util.List;

import com.nextrip.common.base.Base;

public class Code extends Base {
	private String codeSeq;
	private String codeGroupSeq;
	private String replaceCode;
	private String name;
	private String enName;
	private String codegroupname;
	private String codegroupcode;
	
	
//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();


	public String getCodeSeq() {
		return codeSeq;
	}
	public void setCodeSeq(String codeSeq) {
		this.codeSeq = codeSeq;
	}
	public String getCodeGroupSeq() {
		return codeGroupSeq;
	}
	public void setCodeGroupSeq(String codeGroupSeq) {
		this.codeGroupSeq = codeGroupSeq;
	}
	public String getReplaceCode() {
		return replaceCode;
	}
	public void setReplaceCode(String replaceCode) {
		this.replaceCode = replaceCode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCodegroupname() {
		return codegroupname;
	}
	public void setCodegroupname(String codegroupname) {
		this.codegroupname = codegroupname;
	}
	public String getCodegroupcode() {
		return codegroupcode;
	}
	public void setCodegroupcode(String codegroupcode) {
		this.codegroupcode = codegroupcode;
	}
	public String getEnName() {
		return enName;
	}
	public void setEnName(String enName) {
		this.enName = enName;
	}

}
