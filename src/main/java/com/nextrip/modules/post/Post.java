package com.nextrip.modules.post;

import java.sql.Timestamp;

public class Post {
	
	private String nxPostSeq;
	private String memberSeq;
	private String region;
	private Integer postType;
	private String addressTitle;
	private String title;
	private String content;
	private Integer addressZip;
	private String address;
	private String addressDetail;
	private String lng;
	private String lat;
	private Integer delNy;
	private Timestamp regDateTime;
	private Timestamp modDateTime;
	
	
	//join
	private String memberName;
	private String memberNickName;

	
	private String servletContext;
	
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

	public Integer getPostType() {
		return postType;
	}

	public void setPostType(Integer postType) {
		this.postType = postType;
	}

	public String getAddressTitle() {
		return addressTitle;
	}

	public void setAddressTitle(String addressTitle) {
		this.addressTitle = addressTitle;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getAddressZip() {
		return addressZip;
	}

	public void setAddressZip(Integer addressZip) {
		this.addressZip = addressZip;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressDetail() {
		return addressDetail;
	}

	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}

	public String getLng() {
		return lng;
	}

	public void setLng(String lng) {
		this.lng = lng;
	}

	public String getLat() {
		return lat;
	}

	public void setLat(String lat) {
		this.lat = lat;
	}

	public Integer getDelNy() {
		return delNy;
	}

	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}

	public Timestamp getRegDateTime() {
		return regDateTime;
	}

	public void setRegDateTime(Timestamp regDateTime) {
		this.regDateTime = regDateTime;
	}

	public Timestamp getModDateTime() {
		return modDateTime;
	}

	public void setModDateTime(Timestamp modDateTime) {
		this.modDateTime = modDateTime;
	}

	
	
	
	
	
	
	

	


	public String getMemberName() {
		return memberName;
	}

	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}

	public String getMemberNickName() {
		return memberNickName;
	}

	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}

	public String getServletContext() {
		return servletContext;
	}

	public void setServletContext(String servletContext) {
		this.servletContext = servletContext;
	}
	
	
	
}
