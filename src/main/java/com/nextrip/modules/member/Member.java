package com.nextrip.modules.member;

import java.sql.Date;

public class Member {
	
	private String memberSeq;
	private String id;
	private String password;
	private String passwordCheck;
	private String newPass;
	private String nickname;
	private String name;
	private Date dob;
	private String phoneNum;
	private String email;
	private String emailFront;
	private Integer emailEnd;
	private Integer adminNy;
	private Integer delNy;
	private Integer lgResultNy;
	private Date regDateTime;
	private Date modDateTime;
	private String token;
	
	//휘재 s
	private String region; 
	private String postCount;
	
	//휘재 e
	
	public String getPasswordCheck() {
		return passwordCheck;
	}
	public void setPasswordCheck(String passwordCheck) {
		this.passwordCheck = passwordCheck;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmailFront() {
		return emailFront;
	}
	public void setEmailFront(String emailFront) {
		this.emailFront = emailFront;
	}
	public Integer getEmailEnd() {
		return emailEnd;
	}
	public void setEmailEnd(Integer emailEnd) {
		this.emailEnd = emailEnd;
	}
	public Integer getAdminNy() {
		return adminNy;
	}
	public void setAdminNy(Integer adminNy) {
		this.adminNy = adminNy;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public Integer getLgResultNy() {
		return lgResultNy;
	}
	public void setLgResultNy(Integer lgResultNy) {
		this.lgResultNy = lgResultNy;
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
	public String getNewPass() {
		return newPass;
	}
	public void setNewPass(String newPass) {
		this.newPass = newPass;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	
	
	public String getToken() {
		return token;
	}
	public void setToken(String token) {
		this.token = token;
	}
	//휘재 s
	public String getPostCount() {
		return postCount;
	}
	public void setPostCount(String postCount) {
		this.postCount = postCount;
	}
	//휘재 e
	
	
}