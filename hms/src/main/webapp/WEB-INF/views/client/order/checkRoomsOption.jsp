<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<body>

	<section class="ftco-section contact-section bg-light">
		<div class="container">
			<div class="categories">
				<h5>your order</h5>
				<hr>
				<ul>
					<li><span>product</span> <span
						style="display: inline-block; width: 80%; text-align: right;">price</span>
					</li>
					<c:set var="point" value="${orderImfo.roomsNm }" />
					<li>${orderDto.checkIn } <span style="display: inline-block; width: 85%; text-align: right;"><fmt:formatNumber value="${roomsDto.price - roomsDto.price * roomsDto.discountRate / 100 }" />원</span>
					<li>${orderImfo.roomsNm } <span style="display: inline-block; width: 85%; text-align: right;"><fmt:formatNumber value="${roomsDto.price - roomsDto.price * roomsDto.discountRate / 100 }" />원</span>
					</li>
					<br>
					<li>point <span id="totalPoint"></span></li>
				</ul>
				<ul>
					<li>Total <span id="viewPaymentAmt"></span></li>
				</ul>
				<hr>
				<br>
				<br>
			</div>
		</div>
	</section>
</body>
</html>