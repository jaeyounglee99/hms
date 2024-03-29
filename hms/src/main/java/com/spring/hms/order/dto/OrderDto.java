package com.spring.hms.order.dto;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class OrderDto {

	private int orderCd;
	private String memberId;
	private int roomsCd;
	private String checkIn;
	private String checkOut;
	private int stayPeriod;
	private int personnel;
	private int breakfast;
	private int swimmingPool;
	private int paymentAmt;
	private int totalPoint;
	private String ordererNm;
	private String ordererBirth;
	private String ordererHp;
	private String ordererEmail;
	private String request;
	private String cardCompanyNm;
	private String cardNo1;
	private String cardNo2;
	private String cardNo3;
	private String cardNo4;
	private String cardValidityMonth;
	private String cardValidityYear;
	private Date payOrderTime;
	
	public int getOrderCd() {
		return orderCd;
	}
	public void setOrderCd(int orderCd) {
		this.orderCd = orderCd;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getRoomsCd() {
		return roomsCd;
	}
	public void setRoomsCd(int roomsCd) {
		this.roomsCd = roomsCd;
	}
	public String getCheckIn() {
		return checkIn;
	}
	public void setCheckIn(String checkIn) {
		this.checkIn = checkIn;
	}
	public String getCheckOut() {
		return checkOut;
	}
	public void setCheckOut(String checkOut) {
		this.checkOut = checkOut;
	}
	public int getStayPeriod() {
		return stayPeriod;
	}
	public void setStayPeriod(int stayPeriod) {
		this.stayPeriod = stayPeriod;
	}
	public int getPersonnel() {
		return personnel;
	}
	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}
	public int getBreakfast() {
		return breakfast;
	}
	public void setBreakfast(int breakfast) {
		this.breakfast = breakfast;
	}
	public int getSwimmingPool() {
		return swimmingPool;
	}
	public void setSwimmingPool(int swimmingPool) {
		this.swimmingPool = swimmingPool;
	}
	public int getPaymentAmt() {
		return paymentAmt;
	}
	public void setPaymentAmt(int paymentAmt) {
		this.paymentAmt = paymentAmt;
	}
	public int getTotalPoint() {
		return totalPoint;
	}
	public void setTotalPoint(int totalPoint) {
		this.totalPoint = totalPoint;
	}
	public String getOrdererNm() {
		return ordererNm;
	}
	public void setOrdererNm(String ordererNm) {
		this.ordererNm = ordererNm;
	}
	public String getOrdererBirth() {
		return ordererBirth;
	}
	public void setOrdererBirth(String ordererBirth) {
		this.ordererBirth = ordererBirth;
	}
	public String getOrdererHp() {
		return ordererHp;
	}
	public void setOrdererHp(String ordererHp) {
		this.ordererHp = ordererHp;
	}
	public String getOrdererEmail() {
		return ordererEmail;
	}
	public void setOrdererEmail(String ordererEmail) {
		this.ordererEmail = ordererEmail;
	}
	public String getRequest() {
		return request;
	}
	public void setRequest(String request) {
		this.request = request;
	}
	public String getCardCompanyNm() {
		return cardCompanyNm;
	}
	public void setCardCompanyNm(String cardCompanyNm) {
		this.cardCompanyNm = cardCompanyNm;
	}
	public String getCardNo1() {
		return cardNo1;
	}
	public void setCardNo1(String cardNo1) {
		this.cardNo1 = cardNo1;
	}
	public String getCardNo2() {
		return cardNo2;
	}
	public void setCardNo2(String cardNo2) {
		this.cardNo2 = cardNo2;
	}
	public String getCardNo3() {
		return cardNo3;
	}
	public void setCardNo3(String cardNo3) {
		this.cardNo3 = cardNo3;
	}
	public String getCardNo4() {
		return cardNo4;
	}
	public void setCardNo4(String cardNo4) {
		this.cardNo4 = cardNo4;
	}
	public String getCardValidityMonth() {
		return cardValidityMonth;
	}
	public void setCardValidityMonth(String cardValidityMonth) {
		this.cardValidityMonth = cardValidityMonth;
	}
	public String getCardValidityYear() {
		return cardValidityYear;
	}
	public void setCardValidityYear(String cardValidityYear) {
		this.cardValidityYear = cardValidityYear;
	}
	public Date getPayOrderTime() {
		return payOrderTime;
	}
	public void setPayOrderTime(Date payOrderTime) {
		this.payOrderTime = payOrderTime;
	}
	
}
