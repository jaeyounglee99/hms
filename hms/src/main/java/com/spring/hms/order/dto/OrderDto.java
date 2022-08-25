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
	private int paymentAmt;
	private String ordererNm;
	private String ordererHp;
	private String request;
	private String cardCompanyNm;
	private String cardNm;
	private String cardPayMonth;
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
	public String getOrdererHp() {
		return ordererHp;
	}
	public void setOrdererHp(String ordererHp) {
		this.ordererHp = ordererHp;
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
	public String getCardNm() {
		return cardNm;
	}
	public void setCardNm(String cardNm) {
		this.cardNm = cardNm;
	}
	public String getCardPayMonth() {
		return cardPayMonth;
	}
	public void setCardPayMonth(String cardPayMonth) {
		this.cardPayMonth = cardPayMonth;
	}
	public Date getPayOrderTime() {
		return payOrderTime;
	}
	public void setPayOrderTime(Date payOrderTime) {
		this.payOrderTime = payOrderTime;
	}
	
}
