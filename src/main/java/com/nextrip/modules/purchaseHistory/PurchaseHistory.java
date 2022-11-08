package com.nextrip.modules.purchaseHistory;

import java.util.Date;

import com.nextrip.common.base.Base;

public class PurchaseHistory extends Base{
	private String nxPurchaseHistorySeq;
	private String memberSeq;
	private String nxRoomSeq;
	private String reservationName;
	private String reservationPhoneNum;
	private Integer reservationStatus;
	private Integer paymentMethod;
	private Date checkInDate;
	private Date checkOutDate;
	private String pay;
	private Integer personnel;
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
	public Date getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(Date checkInDate) {
		this.checkInDate = checkInDate;
	}
	public Date getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(Date checkOutDate) {
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



}
