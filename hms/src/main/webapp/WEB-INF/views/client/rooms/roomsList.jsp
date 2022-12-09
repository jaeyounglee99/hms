<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="sessionId" value="${sessionScope.memberId }"/>	
<!DOCTYPE html>

    <div class="hero-wrap" style="background-image: url('${contextPath }/resources/bootstrap/images/main.header.jpeg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
          	<div class="text">
	            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="${contextPath }/">Home</a></span> <span>About</span></p>
	            <h1 class="mb-4 bread">Rooms</h1>
            </div>
          </div>
        </div>
      </div>
    </div>


    <section class="ftco-section bg-light">
    	<div class="container">
    		<div class="text">
	            <span class="breadcrumbs mb-2"><a href="${contextPath }/rooms/roomsList?sort=all">All</a></span>&ensp;
	            <span class="breadcrumbs mb-2"><a href="${contextPath }/rooms/roomsList?sort=deluxe">Deluxe</a></span>&ensp;
	            <span class="breadcrumbs mb-2"><a href="${contextPath }/rooms/roomsList?sort=superior">Superior</a></span>&ensp;
	            <span class="breadcrumbs mb-2"><a href="${contextPath }/rooms/roomsList?sort=premier">Premier</a></span>&ensp;
	            <span class="breadcrumbs mb-2"><a href="${contextPath }/rooms/roomsList?sort=kids">Kids</a></span>&ensp;
	            <span class="breadcrumbs mb-2"><a href="${contextPath }/rooms/roomsList?sort=piacevole">Piacevole</a></span>&ensp;
	            <span class="breadcrumbs mb-2"><a href="${contextPath }/rooms/roomsList?sort=suite">Suite</a></span><br><br>
            </div>
    		<div class="row">
	        <div class="col-lg-9">
		    		<div class="row">
		    		<c:choose>
		    			<c:when test="${empty roomsList }">
		    				<div class="btn-custom">
		    					<h3>등록된 객실이 없습니다.</h3>	
		    				</div>
		    			</c:when>
		    			<c:otherwise>
		    				<c:forEach var="roomsDto" items="${roomsList }">
		    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
		    				<div class="room">
		    					<a href="${contextPath }/rooms/roomsDetail?roomsCd=${roomsDto.roomsCd}" class="img d-flex justify-content-center align-items-center" style="background-image: url(${contextPath}/thumbnails?roomsFileName=${roomsDto.roomsFileName1});">
		    						<div class="icon d-flex justify-content-center align-items-center">
		    							<span class="icon-search2"></span>
		    						</div>
		    					</a>
		    					<div class="text p-3 text-center">
		    						<h3 class="mb-3"><a href="${contextPath }/rooms/roomsDetail?roomsCd=${roomsDto.roomsCd}"> ${roomsDto.roomsNm }</a></h3>
		    						<p><span class="price mr-2"><fmt:formatNumber value="${roomsDto.price }" />원</span> <span class="per">per night</span></p>
		    						<ul class="list">
		    							<li><span>Size:</span> ${roomsDto.size } m2</li>
		    							<li><span>View:</span> ${roomsDto.view } View</li>
		    						</ul>
		    						<hr>
		    						<p class="pt-1"><a href="${contextPath }/rooms/roomsDetail?roomsCd=${roomsDto.roomsCd}" class="btn-custom">Book Now <span class="icon-long-arrow-right"></span></a></p>
		    					</div>
		    				</div>
		    			</div>
		    			</c:forEach>
		    			</c:otherwise>
		    		</c:choose>	
		    		</div>
		    	</div>
    </section>

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
