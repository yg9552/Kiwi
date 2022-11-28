package com.nextrip.modules.post;

import com.nextrip.common.base.BaseVo;

public class PostVo extends BaseVo {
	
	private String nxPostSeq;
	private String memberSeq;
	private String region;
	private Integer likeCount;
	
	
	public String getNxPostSeq() {
		return nxPostSeq;
	}
	public void setNxPostSeq(String nxPostSeq) {
		this.nxPostSeq = nxPostSeq;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public Integer getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(Integer likeCount) {
		this.likeCount = likeCount;
	}
	
    
    
}
