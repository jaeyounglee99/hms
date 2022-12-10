<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<script src="${contextPath}/resources/ckeditor/ckeditor.js"></script> 
<head>
<meta charset="utf-8">
<script>
	
	function formValidationCheck(){
		
		var ordererNm = document.form.ordererNm;
		if (ordererNm.value == ""){
			alert("예약자 이름을 입력하세요");
			ordererNm.focus();
			return false;
		}
		
		var ordererBirth = document.form.ordererBirth;
		if (ordererBirth.value == ""){
			alert("생년월일을 입력하세요");
			ordererBirth.focus();
			return false; 
		}
		
		var ordererHp = document.form.ordererHp;
		if (ordererHp.value == ""){
			alert("연락처를 입력하세요");
			ordererHp.focus();
			return false;
		}
		
		var ordererEmail = document.form.ordererEmail;
		if (ordererEmail.value == ""){
			alert("이메일을 입력하세요");
			ordererEmail.focus();
			return false;
		}
		
		var cardNo1 = document.form.cardNo1;
		if (cardNo1.value == ""){
			alert("카드번호를 입력하세요");
			cardNo1.focus();
			return false;
		}
		
		var cardNo2 = document.form.cardNo2;
		if (cardNo2.value == ""){
			alert("카드번호를 입력하세요");
			cardNo2.focus();
			return false;
		}
		var cardNo3 = document.form.cardNo3;
		if (cardNo3.value == ""){
			alert("카드번호를 입력하세요");
			cardNo3.focus();
			return false;
		}
		var cardNo4 = document.form.cardNo4;
		if (cardNo4.value == ""){
			alert("카드번호를 입력하세요");
			cardNo4.focus();
			return false;
		}
		
	}
	
</script>
</head>
<div class="hero-wrap"
	style="background-image: url('${contextPath }/resources/bootstrap/images/main.header.jpeg');">
	<div class="overlay"></div>
	<div class="container">
		<div
			class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
			<div
				class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
				<div class="text">
					<p class="breadcrumbs mb-2">
						<span class="mr-2"><a href="${contextPath }/index">Home</a></span>
						<span>Registration</span>
					</p>
					<h1 class="mb-4 bread">Registration</h1>
				</div>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section contact-section bg-light">
	<div class="container">
		<div class="row d-flex mb-5 contact-info">
			<div class="col-md-12 mb-4" align="center">
				<h2 class="h3">예약자 정보 입력</h2>
			</div>
		</div>
		<!-- <div align="center"> -->
		<div class="row block-9">
		
			<form name="form" action="${contextPath }/order/orderRooms" method="post" onsubmit="return formValidationCheck()" class="bg-white p-5 contact-form">
				<input type="hidden" name="checkIn" value="${orderDto.checkIn }">
				<input type="hidden" name="checkOut" value="${orderDto.checkOut }">
				<input type="hidden" name="personnel" value="${orderDto.personnel }">
				<input type="hidden" name="breakfast" value="${orderDto.breakfast }">
				<input type="hidden" name="swimmingPool" value="${orderDto.swimmingPool }">
				<input type="hidden" name="paymentAmt" value="${orderDto.paymentAmt }">
				<input type="hidden" name="totalPoint" value="${orderDto.totalPoint}">
				<input type="hidden" name="memberId" value="${orderer.memberId}">
				<input type="hidden" name="roomsCd" value="${orderInfo.roomsCd}">
				
				
				<div class="categories">
                	<li>
						<span style="display: inline-block; width: 20%; text-align: justify;">product</span>
						<span style="display: inline-block; width: 15%; text-align: justify;">check-in</span>
						<span style="display: inline-block; width: 15%; text-align: justify;">check-out</span> 
						<span style="display: inline-block; width: 10%; text-align: justify;">stayPeriod</span> 
						<span style="display: inline-block; width: 10%; text-align: justify;">person</span> 
						<span style="display: inline-block; width: 20%; text-align: justify;">price</span>
					</li>
					<li>
						<span style="display: inline-block; width: 20%; text-align: justify;">${orderInfo.roomsNm }</span>
						<span style="display: inline-block; width: 15%; text-align: justify;">${orderDto.checkIn }</span>
						<span style="display: inline-block; width: 15%; text-align: justify;">${orderDto.checkOut }</span>
						<span style="display: inline-block; width: 10%; text-align: justify;">${orderDto.stayPeriod}박</span>
						<span style="display: inline-block; width: 10%; text-align: justify;">${orderDto.personnel }명</span>
						<span style="display: inline-block; width: 20%; text-align: justify;"><fmt:formatNumber value="${orderDto.paymentAmt }"/>원</span>
						 
					</li>
					<li>
						<span>point</span>
						<span style="display: inline-block; width: 75%; text-align: right;"><fmt:formatNumber value="${orderDto.totalPoint}"/>P적립</span>
					</li><br><br>
              </div>
				<div class="form-group" align="left">
					<p>이름 <span style="color: red;">*</span></p>
					<input type="text" name="ordererNm" value="${orderer.memberNm }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">생년월일 <span style="color: red;">*</span></p>
					<input type="text" name="ordererBirth" value="${orderer.dateBirth }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">전화번호 <span style="color: red;">*</span></p>
					<input type="text" name="ordererHp" value="${orderer.hp }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">이메일 <span style="color: red;">*</span></p>
					<input type="text" name="ordererEmail" value="${orderer.email }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">카드선택 <span style="color: red;">*</span></p>
					<select name="cardCompanyNm" class="form-control">
						<option>비씨</option>
						<option>국민</option>
						<option>우리</option>
						<option>하나SK</option>
						<option>삼성</option>
						<option>신한</option>
						<option>현대</option>
						<option>롯데</option>
						<option>농협</option>
						<option>수협</option>
						<option>카카오뱅크</option>
					</select>
				</div>
				<div class="form-group">
					<p align="left">카드번호 <span style="color: red;">*</span></p>
					<div class="form-control">
					<input type="text" name="cardNo1"  style="width:20%" maxlength="4"> -
					<input type="text" name="cardNo2"  style="width:20%" maxlength="4"> -
					<input type="text" name="cardNo3" style="width:20%" maxlength="4"> -
					<input type="text" name="cardNo4"  style="width:20%" maxlength="4">
					</div>
				</div>
				<div class="form-group">
					<p align="left">카드 유효기간 <span style="color: red;">*</span></p>
					<div class="row">
					 &emsp; &emsp;<select name="cardValidityMonth" style="width:30%">
						<option>1월</option>
						<option>2월</option>
						<option>3월</option>
						<option>4월</option>
						<option>5월</option>
						<option>6월</option>
						<option>7월</option>
						<option>8월</option>
						<option>9월</option>
						<option>10월</option>
						<option>11월</option>
						<option>12월</option>
					</select> &emsp; &emsp;
					<select name="cardValidityYear" style="width:30%">
						<option>2022년</option>
						<option>2023년</option>
						<option>2024년</option>
						<option>2025년</option>
						<option>2026년</option>
						<option>2027년</option>
						<option>2028년</option>
						<option>2029년</option>
						<option>2030년</option>
						<option>2031년</option>
						<option>2032년</option>
					</select>
					</div>
				</div>
				<div class="form-group" align="left">
					<p>요청사항 <span style="color: red;">*</span></p>
					<input type="text" name="request" maxlength="300" class="form-control">
				</div>
				<div class="form-group" align="center">
					<input type="submit" value="예약하기" class="btn py-3 px-4 btn-primary" style="width: 80%">
				</div>
			</form>
		</div>
	</div>
	<!-- </div> -->
</section> 
</body>
</html>