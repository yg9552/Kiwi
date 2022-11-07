package com.nextrip.modules.accommodation;


import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.MultipartFile;

import com.nextrip.common.base.Base;

public class Accommodation extends Base {
	
	private String nxAccommodationSeq;
	private Integer region;
	private Integer hotelType;
	private String hotelName;
	private String hotelIntroduce;
	private String addressZip;
	private String address;
	private String adressDetail;
	private String lng;
	private String lat;
	@DateTimeFormat(pattern = "hh:mm")
	private Date checkin;
	@DateTimeFormat(pattern = "hh:mm")
	private Date checkout;

	
	private MultipartFile[] uploadImg;
	private Integer[] uploadImgSort;
	private String[] uploadImgDeleteSeq;
	private String[] uploadImgDeletePathFile;	
	private Integer uploadImgMaxNumber;
	private MultipartFile[] uploadImg2;
	private Integer[] uploadImg2Sort;
	private String[] uploadImg2DeleteSeq;
	private String[] uploadImg2DeletePathFile;	
	private Integer uploadImg2MaxNumber;
	private MultipartFile[] uploadFile;
	private Integer[] uploadFileSort;
	private String[] uploadFileDeleteSeq;
	private String[] uploadFileDeletePathFile;
	
	public String getNxAccommodationSeq() {
		return nxAccommodationSeq;
	}
	public void setNxAccommodationSeq(String nxAccommodationSeq) {
		this.nxAccommodationSeq = nxAccommodationSeq;
	}
	public Integer getRegion() {
		return region;
	}
	public void setRegion(Integer region) {
		this.region = region;
	}
	public Integer getHotelType() {
		return hotelType;
	}
	public void setHotelType(Integer hotelType) {
		this.hotelType = hotelType;
	}
	public String getHotelName() {
		return hotelName;
	}
	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}
	public String getHotelIntroduce() {
		return hotelIntroduce;
	}
	public void setHotelIntroduce(String hotelIntroduce) {
		this.hotelIntroduce = hotelIntroduce;
	}
	public String getAddressZip() {
		return addressZip;
	}
	public void setAddressZip(String addressZip) {
		this.addressZip = addressZip;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAdressDetail() {
		return adressDetail;
	}
	public void setAdressDetail(String adressDetail) {
		this.adressDetail = adressDetail;
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
	public MultipartFile[] getUploadImg() {
		return uploadImg;
	}
	public void setUploadImg(MultipartFile[] uploadImg) {
		this.uploadImg = uploadImg;
	}
	public Integer[] getUploadImgSort() {
		return uploadImgSort;
	}
	public void setUploadImgSort(Integer[] uploadImgSort) {
		this.uploadImgSort = uploadImgSort;
	}
	public String[] getUploadImgDeleteSeq() {
		return uploadImgDeleteSeq;
	}
	public void setUploadImgDeleteSeq(String[] uploadImgDeleteSeq) {
		this.uploadImgDeleteSeq = uploadImgDeleteSeq;
	}
	public String[] getUploadImgDeletePathFile() {
		return uploadImgDeletePathFile;
	}
	public void setUploadImgDeletePathFile(String[] uploadImgDeletePathFile) {
		this.uploadImgDeletePathFile = uploadImgDeletePathFile;
	}
	public Integer getUploadImgMaxNumber() {
		return uploadImgMaxNumber;
	}
	public void setUploadImgMaxNumber(Integer uploadImgMaxNumber) {
		this.uploadImgMaxNumber = uploadImgMaxNumber;
	}
	public MultipartFile[] getUploadImg2() {
		return uploadImg2;
	}
	public void setUploadImg2(MultipartFile[] uploadImg2) {
		this.uploadImg2 = uploadImg2;
	}
	public Integer[] getUploadImg2Sort() {
		return uploadImg2Sort;
	}
	public void setUploadImg2Sort(Integer[] uploadImg2Sort) {
		this.uploadImg2Sort = uploadImg2Sort;
	}
	public String[] getUploadImg2DeleteSeq() {
		return uploadImg2DeleteSeq;
	}
	public void setUploadImg2DeleteSeq(String[] uploadImg2DeleteSeq) {
		this.uploadImg2DeleteSeq = uploadImg2DeleteSeq;
	}
	public String[] getUploadImg2DeletePathFile() {
		return uploadImg2DeletePathFile;
	}
	public void setUploadImg2DeletePathFile(String[] uploadImg2DeletePathFile) {
		this.uploadImg2DeletePathFile = uploadImg2DeletePathFile;
	}
	public Integer getUploadImg2MaxNumber() {
		return uploadImg2MaxNumber;
	}
	public void setUploadImg2MaxNumber(Integer uploadImg2MaxNumber) {
		this.uploadImg2MaxNumber = uploadImg2MaxNumber;
	}
	public MultipartFile[] getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile[] uploadFile) {
		this.uploadFile = uploadFile;
	}
	public Integer[] getUploadFileSort() {
		return uploadFileSort;
	}
	public void setUploadFileSort(Integer[] uploadFileSort) {
		this.uploadFileSort = uploadFileSort;
	}
	public String[] getUploadFileDeleteSeq() {
		return uploadFileDeleteSeq;
	}
	public void setUploadFileDeleteSeq(String[] uploadFileDeleteSeq) {
		this.uploadFileDeleteSeq = uploadFileDeleteSeq;
	}
	public String[] getUploadFileDeletePathFile() {
		return uploadFileDeletePathFile;
	}
	public void setUploadFileDeletePathFile(String[] uploadFileDeletePathFile) {
		this.uploadFileDeletePathFile = uploadFileDeletePathFile;
	}
	public Date getCheckin() {
		return checkin;
	}
	public void setCheckin(Date checkin) {
		this.checkin = checkin;
	}
	public Date getCheckout() {
		return checkout;
	}
	public void setCheckout(Date checkout) {
		this.checkout = checkout;
	}


}
