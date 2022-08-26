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
	private int personnel;
	private int breakfastQty;
	private int swimmingPoolQty;
	private int paymentAmt;
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
	private int cardValidityMonth;
	private int cardValidityYear;
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
	public int getPersonnel() {
		return personnel;
	}
	public void setPersonnel(int personnel) {
		this.personnel = personnel;
	}
	public int getBreakfastQty() {
		return breakfastQty;
	}
	public void setBreakfastQty(int breakfastQty) {
		this.breakfastQty = breakfastQty;
	}
	public int getSwimmingPoolQty() {
		return swimmingPoolQty;
	}
	public void setSwimmingPoolQty(int swimmingPoolQty) {
		this.swimmingPoolQty = swimmingPoolQty;
	}
	public int getPaymentAmt() {
		return paymentAmt;
	}
	public void setPaymentAmt(int paymentAmt) {
		this.paymentAmt = paymentAmt;
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
	public int getCardValidityMonth() {
		return cardValidityMonth;
	}
	public void setCardValidityMonth(int cardValidityMonth) {
		this.cardValidityMonth = cardValidityMonth;
	}
	public int getCardValidityYear() {
		return cardValidityYear;
	}
	public void setCardValidityYear(int cardValidityYear) {
		this.cardValidityYear = cardValidityYear;
	}
	public Date getPayOrderTime() {
		return payOrderTime;
	}
	public void setPayOrderTime(Date payOrderTime) {
		this.payOrderTime = payOrderTime;
	}
	
}
