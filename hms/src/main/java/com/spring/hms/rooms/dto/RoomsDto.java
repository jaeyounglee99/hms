package com.spring.hms.rooms.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class RoomsDto {

	private int roomsCd;
	private String roomsNm;
	private String view;
	private int price;
	private int discountRate;
	private int point;
	private String floor;
	private String bedNm;
	private int size;
	private int stoke;
	private String amenityBath;
	private String amenityBed;
	private String facilities;
	private String roomsIntro;
	private String roomsInfo;
	private String roomsFileName1;
	private String roomsFileName2;
	private String roomsFileName3;
	private Date enrollDt;
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
	public String getFloor() {
		return floor;
	}
	public void setFloor(String floor) {
		this.floor = floor;
	}
	public String getBedNm() {
		return bedNm;
	}
	public void setBedNm(String bedNm) {
		this.bedNm = bedNm;
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
	public String getFacilities() {
		return facilities;
	}
	public void setFacilities(String facilities) {
		this.facilities = facilities;
	}
	public String getRoomsIntro() {
		return roomsIntro;
	}
	public void setRoomsIntro(String roomsIntro) {
		this.roomsIntro = roomsIntro;
	}
	public String getRoomsInfo() {
		return roomsInfo;
	}
	public void setRoomsInfo(String roomsInfo) {
		this.roomsInfo = roomsInfo;
	}
	public String getRoomsFileName1() {
		return roomsFileName1;
	}
	public void setRoomsFileName1(String roomsFileName1) {
		this.roomsFileName1 = roomsFileName1;
	}
	public String getRoomsFileName2() {
		return roomsFileName2;
	}
	public void setRoomsFileName2(String roomsFileName2) {
		this.roomsFileName2 = roomsFileName2;
	}
	public String getRoomsFileName3() {
		return roomsFileName3;
	}
	public void setRoomsFileName3(String roomsFileName3) {
		this.roomsFileName3 = roomsFileName3;
	}
	public Date getEnrollDt() {
		return enrollDt;
	}
	public void setEnrollDt(Date enrollDt) {
		this.enrollDt = enrollDt;
	}
	
	

}
