package com.spring.hms.rooms.dto;

import org.springframework.stereotype.Component;

@Component
public class RoomsDto {

	private int roomsCd;
	private String roomsNm;
	private String view;
	private int price;
	private int discountRate;
	private int point;
	private int floor;
	private String bedNm;
	private int bedCnt;
	private int size;
	private int stoke;
	private String amenityBath;
	private String amenityBed;
	private String amenityPrivateBar;
	private String facilities;
	private String intro;
	private String roomsFileName;
	
	public int getRoomsCd() {
		return roomsCd;
	}
	public void setRoomsCd(int roomsCd) {
		this.roomsCd = roomsCd;
	}
	public String getRoomsNm() {
		return roomsNm;
	}
	public void setRoomsNm(String roomsNm) {
		this.roomsNm = roomsNm;
	}
	public String getView() {
		return view;
	}
	public void setView(String view) {
		this.view = view;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(int discountRate) {
		this.discountRate = discountRate;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getFloor() {
		return floor;
	}
	public void setFloor(int floor) {
		this.floor = floor;
	}
	public String getBedNm() {
		return bedNm;
	}
	public void setBedNm(String bedNm) {
		this.bedNm = bedNm;
	}
	public int getBedCnt() {
		return bedCnt;
	}
	public void setBedCnt(int bedCnt) {
		this.bedCnt = bedCnt;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getStoke() {
		return stoke;
	}
	public void setStoke(int stoke) {
		this.stoke = stoke;
	}
	public String getAmenityBath() {
		return amenityBath;
	}
	public void setAmenityBath(String amenityBath) {
		this.amenityBath = amenityBath;
	}
	public String getAmenityBed() {
		return amenityBed;
	}
	public void setAmenityBed(String amenityBed) {
		this.amenityBed = amenityBed;
	}
	public String getAmenityPrivateBar() {
		return amenityPrivateBar;
	}
	public void setAmenityPrivateBar(String amenityPrivateBar) {
		this.amenityPrivateBar = amenityPrivateBar;
	}
	public String getFacilities() {
		return facilities;
	}
	public void setFacilities(String facilities) {
		this.facilities = facilities;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getRoomsFileName() {
		return roomsFileName;
	}
	public void setRoomsFileName(String roomsFileName) {
		this.roomsFileName = roomsFileName;
	}
}
