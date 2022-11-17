package com.nextrip.modules.post;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import com.nextrip.common.base.Base;

public class Post extends Base {
	
	private String nxPostSeq;
	private String memberSeq;
	private String region;
	private Integer postType;
	private String addressTitle;
	private String title;
	private String content;
	private Integer addressZip;
	private String roadAddress;
	private String jibunAddress;
	private String addressDetail;
	private String lng;
	private String lat;
	private Integer delNy;
	private Date regDateTime;
	private Date modDateTime;
	
	
	//join
	private String memberName;
	private String memberNickName;
	
	//upload
	
	private MultipartFile[] uploadImage;
	private Integer uploadImageMaxNumber;
	private String[] uploadImageDeleteSeq;
	private String[] uploadImageDeletePathFile;	

	
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


	public String getRoadAddress() {
		return roadAddress;
	}


	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}


	public String getJibunAddress() {
		return jibunAddress;
	}


	public void setJibunAddress(String jibunAddress) {
		this.jibunAddress = jibunAddress;
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


	public Date getRegDateTime() {
		return regDateTime;
	}


	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}


	public Date getModDateTime() {
		return modDateTime;
	}


	public void setModDateTime(Date modDateTime) {
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


	public MultipartFile[] getUploadImage() {
		return uploadImage;
	}


	public void setUploadImage(MultipartFile[] uploadImage) {
		this.uploadImage = uploadImage;
	}


	public Integer getUploadImageMaxNumber() {
		return uploadImageMaxNumber;
	}


	public void setUploadImageMaxNumber(Integer uploadImageMaxNumber) {
		this.uploadImageMaxNumber = uploadImageMaxNumber;
	}


	public String[] getUploadImageDeleteSeq() {
		return uploadImageDeleteSeq;
	}


	public void setUploadImageDeleteSeq(String[] uploadImageDeleteSeq) {
		this.uploadImageDeleteSeq = uploadImageDeleteSeq;
	}


	public String[] getUploadImageDeletePathFile() {
		return uploadImageDeletePathFile;
	}


	public void setUploadImageDeletePathFile(String[] uploadImageDeletePathFile) {
		this.uploadImageDeletePathFile = uploadImageDeletePathFile;
	}


	public String getServletContext() {
		return servletContext;
	}


	public void setServletContext(String servletContext) {
		this.servletContext = servletContext;
	}
	
	

	
	
	
}
