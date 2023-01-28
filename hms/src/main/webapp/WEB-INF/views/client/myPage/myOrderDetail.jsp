<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
</head>
<body>

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
							<span>orderDetail</span>
						</p>
						<h1 class="mb-4 bread">orderDetail</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<section class="ftco-section contact-section bg-light">
		<div class="container">
		<h3>your order</h3><hr>
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<ul class="list-unstyled">
							<li>
								<span class="py-2 d-block">체크인</span>
								<span class="py-2 d-block">체크아웃</span>
								<span class="py-2 d-block">연락처 정보</span>
								<span class="py-2 d-block">예약자</span>
								<span class="py-2 d-block">예약 객실</span>
								<span class="py-2 d-block">총인원</span>
							</li>
						</ul>
					</div>
					<hr>
						<ul class="list-unstyled">
							<li>
								<span class="py-2 d-block">조식 추가</span>
								<span class="py-2 d-block">수영장 이용</span>
							</li>
						</ul>
					<hr>
						<ul class="list-unstyled">
							<li><span class="py-2 d-block">적립 포인트</span></li>
						</ul>
					<hr>
						<ul class="list-unstyled">
							<li><span class="py-2 d-block">요청사항</span></li>
						</ul>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<ul class="list-unstyled">
							<li>
								<span class="py-2 d-block">${myOrder.checkIn}</span>
								<span class="py-2 d-block">${myOrder.checkOut}</span>
								<span class="py-2 d-block">${myOrder.ordererHp}</span>
								<span class="py-2 d-block">${myOrder.ordererNm}</span>
								<span class="py-2 d-block">${myOrder.roomsNm}</span>
								<span class="py-2 d-block">${myOrder.personnel} 명</span>
							</li>
						</ul>
					</div>
					<hr>
						<ul class="list-unstyled">
							<li>
								<span class="py-2 d-block">${myOrder.breakfast} 명</span>
								<span class="py-2 d-block">${myOrder.swimmingPool} 명</span>
							</li>
						</ul>
					<hr>
						<ul class="list-unstyled">
							<li><span class="py-2 d-block"><fmt:formatNumber value="${myOrder.totalPoint}"/> P</span></li>
						</ul>
					<hr>
						<ul class="list-unstyled">
							<li><span class="py-2 d-block">${myOrder.request}</span></li>
						</ul>
				</div>
			</div>
		</div>
	</section>
</body>
</html>