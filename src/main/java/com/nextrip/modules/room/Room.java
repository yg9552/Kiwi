package com.nextrip.modules.room;

import com.nextrip.common.base.Base;

public class Room extends Base{
	private String nxRoomSeq;
	private String nxAccommodationSeq;
	private String roomName;
	private Integer roomType;
	private Integer price;
	
	public String getNxRoomSeq() {
		return nxRoomSeq;
	}
	public void setNxRoomSeq(String nxRoomSeq) {
		this.nxRoomSeq = nxRoomSeq;
	}
	public String getNxAccommodationSeq() {
		return nxAccommodationSeq;
	}
	public void setNxAccommodationSeq(String nxAccommodationSeq) {
		this.nxAccommodationSeq = nxAccommodationSeq;
	}
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
