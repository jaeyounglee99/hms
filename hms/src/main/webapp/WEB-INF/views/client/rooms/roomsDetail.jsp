<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="sessionId" value="${sessionScope.memberId }"/>
<!DOCTYPE html>
<html lang="en">
<head>
<script>

function processToOrder(roomsCd) {
	
	if("${sessionId == null}" == "true") {
		alert("로그인 후 이용해 주세요");
		location.href = "${contextPath}/member/login";
	}
	
	else {
		
	var checkInYMD = $("[name='checkIn']").val();
	var checkInArray = checkInYMD.split("/");
	var checkIn = checkInArray[2] + "-" + checkInArray[0] + "-" + checkInArray[1];
	
	var checkOutYMD = $("[name='checkOut']").val();
	var checkOutArray = checkOutYMD.split("/");
	var checkOut = checkOutArray[2] + "-" + checkOutArray[0] +  "-" + checkOutArray[1];
	
	var date1 = new Date(checkInArray[2] , checkInArray[0] , checkInArray[1]);
	var date2 = new Date(checkOutArray[2] , checkOutArray[0] , checkOutArray[1]);
	
	var diff = date2 - date1;
	var currDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨
	var currMonth = currDay * 30;// 월 만듬
	var currYear = currMonth * 12; // 년 만듬
	
	var stayPeriod = parseInt(diff/currDay);
	
	var personnel = $("[name='personnel']").val();
	location.href = "${contextPath}/order/checkRoomsOption?roomsCd="+roomsCd+"&checkIn="+checkIn+"&checkOut="+checkOut+"&stayPeriod="+stayPeriod+"&personnel="+personnel;
	
	}
}

</script>

</head>
<body>
	<div class="hero-wrap"
		style="background-image: url('${contextPath }/resources/bootstrap/images/deluxe.jpeg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
				<div
					class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
					<div class="text">
						<p class="breadcrumbs mb-2"
							data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">
							<span class="mr-2"><a href="${contextPath }/">Home</a></span> <span
								class="mr-2"><a href="${contextPath }/rooms/roomsList?sort=all">Room</a></span> <span>Room
								Single</span>
						</p>
						<h1 class="mb-4 bread">${roomsDto.roomsNm }</h1>
					</div>
				</div>
			</div>
		</div>
	</div>


	<section class="ftco-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8">
					<div class="row">
						<div class="col-md-12 ftco-animate">
							<h2 class="mb-4">${roomsDto.roomsNm }</h2>
							<div class="single-slider owl-carousel">
								<div class="item">
									<img
										src="${contextPath }/thumbnails?roomsFileName=${roomsDto.roomsFileName1}" />
								</div>
								<div class="item">
									<img
										src="${contextPath }/thumbnails?roomsFileName=${roomsDto.roomsFileName2}" />
								</div>
								<div class="item">
									<img
										src="${contextPath }/thumbnails?roomsFileName=${roomsDto.roomsFileName3}" />
								</div>
							</div>
						</div>
						<div class="col-md-12 room-single mt-4 mb-5 ftco-animate">
							<p>${roomsDto.roomsIntro }</p>
							<div class="d-md-flex mt-5 mb-5">
								<ul class="list">
									<li><span>Floor:</span> ${roomsDto.floor }</li>
									<li><span>Size:</span> ${roomsDto.size }m</li>
								</ul>
								<ul class="list ml-md-5">
									<li><span>View:</span> ${roomsDto.view }</li>
									<li><span>Bed:</span> ${roomsDto.bedNm }</li>
								</ul>
							</div>
							<h4 class="mb-4">Facilities</h4>
							<p>${roomsDto.facilities }</p>
						</div>
	
						<div
							class="col-md-12 properties-single ftco-animate mb-5 mt-4 fadeInUp ftco-animated">
							<h4 class="mb-4">Amenity</h4>
							<div class="row">
								<div class="form-check">
									<div>
										<span class="icon-check">욕실</span>
									</div>
									<ul class="list">
										<li>${roomsDto.amenityBath }</li>
									</ul>
									<div>
										<span class="icon-check">침실</span>
									</div>
									<ul class="list">
										<li>${roomsDto.amenityBed }</li>
									</ul>
								</div>
	
							</div>
						</div>
	
	
	
	
	
						<div class="col-md-12 room-single ftco-animate mb-5 mt-5">
							<h4 class="mb-4">Available Room</h4>
							<div class="row">
								<c:forEach var="relatedRooms" items="${relatedRoomsList }">
									<div class="col-sm col-md-6 ftco-animate">
										<div class="room">
											<a
												href="${contextPath }/rooms/roomsDetail?roomsCd=${relatedRooms.roomsCd}"
												class="img img-2 d-flex justify-content-center align-items-center"
												style="background-image: url(${contextPath}/thumbnails?roomsFileName=${relatedRooms.roomsFileName1});">
												<div
													class="icon d-flex justify-content-center align-items-center">
													<span class="icon-search2"></span>
												</div>
											</a>
											<div class="text p-3 text-center">
												<h3 class="mb-3">
													<a
														href="${contextPath }/rooms/roomsDetail?roomsCd=${relatedRooms.roomsCd}">${relatedRooms.roomsNm }</a>
												</h3>
												<p>
													<span class="price mr-2"><fmt:formatNumber
															value="${relatedRooms.price }" />원</span> <span class="per">per
														night</span>
												</p>
												<hr>
												<p class="pt-1">
													<a
														href="${contextPath }/rooms/roomsDetail?roomsCd=${relatedRooms.roomsCd}"
														class="btn-custom">View Room Details <span
														class="icon-long-arrow-right"></span></a>
												</p>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
	
					</div>
				</div>
				<!-- .col-md-8 -->
				<div class="col-lg-4 sidebar ftco-animate">
					<div class="sidebar-box ftco-animate">
						<div class="wrap">
							<h3>예약하기</h3>
								<label><span class="icon-calendar">체크인</span></label> 
									<input type="text" name="checkIn" class="form-control checkin_date"	placeholder="Check-in date"> 
								<label><span class="icon-calendar">체크아웃</span></label> 
									<input type="text" name="checkOut" class="form-control checkout_date" placeholder="Check-out date"> 
								<label><span class="icon-person">인원</span></label>
								<div class="select-wrap">
									<select name="personnel" id="personnel" class="form-control">
										<option value="1">1 person</option>
										<option value="2">2 person</option>
										<option value="3">3 person</option>
										<option value="4">4 person</option>
									</select>
								</div>
								<br>
								<input type="button" value="예약" class="btn btn-primary" onclick="javascript:processToOrder(${roomsDto.roomsCd});">
						</div>
	
						<div class="sidebar-box ftco-animate">
							<h3>Information</h3>
							<ul class="list">
								<li>${roomsDto.roomsInfo }</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!-- .section -->
	
	
	<section class="instagram pt-5">
		<div class="container-fluid">
			<div class="row no-gutters justify-content-center pb-5">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<h2>
						<span>Piacevole Photos</span>
					</h2>
				</div>
			</div>
			<div class="row no-gutters">
				<div class="col-sm-12 col-md ftco-animate">
					<a href="${contextPath }/resources/bootstrap/images/photos1.jpeg"
						class="insta-img image-popup"
						style="background-image: url(${contextPath }/resources/bootstrap/images/photos1.jpeg);">
						<div class="icon d-flex justify-content-center">
							<span class="icon-instagram align-self-center"></span>
						</div>
					</a>
				</div>
				<div class="col-sm-12 col-md ftco-animate">
					<a href="${contextPath }/resources/bootstrap/images/photos2.jpeg"
						class="insta-img image-popup"
						style="background-image: url(${contextPath }/resources/bootstrap/images/photos2.jpeg);">
						<div class="icon d-flex justify-content-center">
							<span class="icon-instagram align-self-center"></span>
						</div>
					</a>
				</div>
				<div class="col-sm-12 col-md ftco-animate">
					<a href="${contextPath }/resources/bootstrap/images/photos3.jpeg"
						class="insta-img image-popup"
						style="background-image: url(${contextPath }/resources/bootstrap/images/photos3.jpeg);">
						<div class="icon d-flex justify-content-center">
							<span class="icon-instagram align-self-center"></span>
						</div>
					</a>
				</div>
				<div class="col-sm-12 col-md ftco-animate">
					<a href="${contextPath }/resources/bootstrap/images/photos4.jpeg"
						class="insta-img image-popup"
						style="background-image: url(${contextPath }/resources/bootstrap/images/photos4.jpeg);">
						<div class="icon d-flex justify-content-center">
							<span class="icon-instagram align-self-center"></span>
						</div>
					</a>
				</div>
				<div class="col-sm-12 col-md ftco-animate">
					<a href="${contextPath }/resources/bootstrap/images/photos5.jpeg"
						class="insta-img image-popup"
						style="background-image: url(${contextPath }/resources/bootstrap/images/photos5.jpeg);">
						<div class="icon d-flex justify-content-center">
							<span class="icon-instagram align-self-center"></span>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>
</body>
</html>