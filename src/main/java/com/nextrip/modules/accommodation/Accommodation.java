package com.nextrip.modules.accommodation;

import java.sql.Timestamp;

public class Accommodation {
	
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
	private String delNy;
	private Timestamp regDateTime;
	private Timestamp modDateTime;
	
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
	public String getDelNy() {
		return delNy;
	}
	public void setDelNy(String delNy) {
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


	

}
