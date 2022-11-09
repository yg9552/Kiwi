package com.nextrip.modules.accommodation;

import com.nextrip.common.base.BaseVo;

public class AccommodationVo extends BaseVo{
	private String shValue;
	private Integer shOption;
	private Integer shDelNy;
	private String nxAccommodationSeq;
	private String nxPurchaseHistorySeq;
	private String nxRoomSeq;
	private String memberSeq;
	
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public Integer getShDelNy() {
		return shDelNy;
	}
	public void setShDelNy(Integer shDelNy) {
		this.shDelNy = shDelNy;
	}
	public String getNxAccommodationSeq() {
		return nxAccommodationSeq;
	}
	public void setNxAccommodationSeq(String nxAccommodationSeq) {
		this.nxAccommodationSeq = nxAccommodationSeq;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getNxPurchaseHistorySeq() {
		return nxPurchaseHistorySeq;
	}
	public void setNxPurchaseHistorySeq(String nxPurchaseHistorySeq) {
		this.nxPurchaseHistorySeq = nxPurchaseHistorySeq;
	}
	public String getNxRoomSeq() {
		return nxRoomSeq;
	}
	public void setNxRoomSeq(String nxRoomSeq) {
		this.nxRoomSeq = nxRoomSeq;
	}
	
	

}
