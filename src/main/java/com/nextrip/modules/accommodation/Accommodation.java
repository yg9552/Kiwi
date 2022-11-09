package com.nextrip.modules.accommodation;


import java.sql.Time;
import java.sql.Timestamp;
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
	private String checkin;
	private String checkout;

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
	
	//PurchaseHistory
	private String nxPurchaseHistorySeq;
	private String memberSeq;
	private String nxRoomSeq;
	private String reservationName;
	private String reservationPhoneNum;
	private Integer reservationStatus;
	private Integer paymentMethod;
	private String checkInDate;
	private String checkOutDate;
	private String pay;
	private Integer personnel;
	
	//Room
	private String roomName;
	private Integer roomType;
	private Integer price;
	
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
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}

	//Purchasehistory
	public String getNxPurchaseHistorySeq() {
		return nxPurchaseHistorySeq;
	}
	public void setNxPurchaseHistorySeq(String nxPurchaseHistorySeq) {
		this.nxPurchaseHistorySeq = nxPurchaseHistorySeq;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getNxRoomSeq() {
		return nxRoomSeq;
	}
	public void setNxRoomSeq(String nxRoomSeq) {
		this.nxRoomSeq = nxRoomSeq;
	}
	public String getReservationName() {
		return reservationName;
	}
	public void setReservationName(String reservationName) {
		this.reservationName = reservationName;
	}
	public String getReservationPhoneNum() {
		return reservationPhoneNum;
	}
	public void setReservationPhoneNum(String reservationPhoneNum) {
		this.reservationPhoneNum = reservationPhoneNum;
	}
	public Integer getReservationStatus() {
		return reservationStatus;
	}
	public void setReservationStatus(Integer reservationStatus) {
		this.reservationStatus = reservationStatus;
	}
	public Integer getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(Integer paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public String getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}
	public String getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(String checkOutDate) {
		this.checkOutDate = checkOutDate;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public Integer getPersonnel() {
		return personnel;
	}
	public void setPersonnel(Integer personnel) {
		this.personnel = personnel;
	}
	
	//Room
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public Integer getRoomType() {
		return roomType;
	}
	public void setRoomType(Integer roomType) {
		this.roomType = roomType;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	


}
