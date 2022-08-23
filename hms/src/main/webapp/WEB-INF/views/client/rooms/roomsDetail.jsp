<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">


    <div class="hero-wrap" style="background-image: url('${contextPath }/resources/bootstrap/images/deluxe.jpeg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
          	<div class="text">
	            <p class="breadcrumbs mb-2" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-2"><a href="index.html">Home</a></span> <span class="mr-2"><a href="rooms.html">Room</a></span> <span>Room Single</span></p>
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
          					<img src="${contextPath }/thumbnails?roomsFileName=${roomsDto.roomsFileName1}"/>
          				</div>
          				<div class="item">
          					<img src="${contextPath }/thumbnails?roomsFileName=${roomsDto.roomsFileName2}"/>
          				</div>
          				<div class="item">
          					<img src="${contextPath }/thumbnails?roomsFileName=${roomsDto.roomsFileName3}"/>
          				</div>
          			</div>
          		</div>
          		<div class="col-md-12 room-single mt-4 mb-5 ftco-animate">
    						<p> ${roomsDto.roomsIntro }</p>
    						<div class="d-md-flex mt-5 mb-5">
    							<ul class="list">
	    							<li><span>Floor:</span>  ${roomsDto.floor }</li>
	    							<li><span>Size:</span>  ${roomsDto.size }m</li>
	    						</ul>
	    						<ul class="list ml-md-5">
	    							<li><span>View:</span>  ${roomsDto.view }</li>
	    							<li><span>Bed:</span>  ${roomsDto.bedNm }</li>
	    						</ul>
    						</div>
    						<h4 class="mb-4">Facilities</h4>
    						<p> ${roomsDto.facilities }</p>
          		</div>
          		
          		<div class="col-md-12 properties-single ftco-animate mb-5 mt-4 fadeInUp ftco-animated">
          			<h4 class="mb-4">Amenity</h4>
          			<div class="row">
					 <div class="form-check">
                  		<div><span class="icon-check">욕실</span></div>
                 		 	<ul class="list">
                 		 		<li>${roomsDto.amenityBath }</li>
                 		 	</ul>
                  		<div><span class="icon-check">침실</span></div>
                 		 	<ul class="list">
                 		 		<li>${roomsDto.amenityBed }</li>
                 		 	</ul>
					 </div>
										
          			</div>
          		</div>
          		
          		
          		
          		

          		<div class="col-md-12 room-single ftco-animate mb-5 mt-5">
          			<h4 class="mb-4">Available Room</h4>
          			<div class="row">
          			<c:foreach var="relatedRooms" items="${relatedRoomsList }">
          				<div class="col-sm col-md-6 ftco-animate">
				    				<div class="room">
				    					<a href="rooms.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(${contextPath}/images/room-1.jpg);">
				    						<div class="icon d-flex justify-content-center align-items-center">
				    							<span class="icon-search2"></span>
				    						</div>
				    					</a>
				    					<div class="text p-3 text-center">
				    						<h3 class="mb-3"><a href="rooms.html">Suite Room</a></h3>
				    						<p><span class="price mr-2">$120.00</span> <span class="per">per night</span></p>
				    						<hr>
				    						<p class="pt-1"><a href="room-single.html" class="btn-custom">View Room Details <span class="icon-long-arrow-right"></span></a></p>
				    					</div>
				    				</div>
				    	</div>
				    </c:foreach>
				    			<!-- <div class="col-sm col-md-6 ftco-animate">
				    				<div class="room">
				    					<a href="rooms.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/room-2.jpg);">
				    						<div class="icon d-flex justify-content-center align-items-center">
				    							<span class="icon-search2"></span>
				    						</div>
				    					</a>
				    					<div class="text p-3 text-center">
				    						<h3 class="mb-3"><a href="rooms.html">Family Room</a></h3>
				    						<p><span class="price mr-2">$20.00</span> <span class="per">per night</span></p>
				    						<hr>
				    						<p class="pt-1"><a href="room-single.html" class="btn-custom">View Room Details <span class="icon-long-arrow-right"></span></a></p>
				    					</div>
				    				</div>
				    			</div> -->
          			</div>
          		</div>
          		
          		<div class="col-md-12 room-single ftco-animate mb-5 mt-5">
          			<h4 class="mb-4">Available Room</h4>
          			<div class="row">
          				<div class="col-sm col-md-6 ftco-animate">
				    				<div class="room">
				    					<a href="rooms.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/room-1.jpg);">
				    						<div class="icon d-flex justify-content-center align-items-center">
				    							<span class="icon-search2"></span>
				    						</div>
				    					</a>
				    					<div class="text p-3 text-center">
				    						<h3 class="mb-3"><a href="rooms.html">Suite Room</a></h3>
				    						<p><span class="price mr-2">$120.00</span> <span class="per">per night</span></p>
				    						<hr>
				    						<p class="pt-1"><a href="room-single.html" class="btn-custom">View Room Details <span class="icon-long-arrow-right"></span></a></p>
				    					</div>
				    				</div>
				    			</div>
				    			<div class="col-sm col-md-6 ftco-animate">
				    				<div class="room">
				    					<a href="rooms.html" class="img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/room-2.jpg);">
				    						<div class="icon d-flex justify-content-center align-items-center">
				    							<span class="icon-search2"></span>
				    						</div>
				    					</a>
				    					<div class="text p-3 text-center">
				    						<h3 class="mb-3"><a href="rooms.html">Family Room</a></h3>
				    						<p><span class="price mr-2">$20.00</span> <span class="per">per night</span></p>
				    						<hr>
				    						<p class="pt-1"><a href="room-single.html" class="btn-custom">View Room Details <span class="icon-long-arrow-right"></span></a></p>
				    					</div>
				    				</div>
				    			</div>
          			</div>
          		</div>

          	</div>
          </div> <!-- .col-md-8 -->
          <div class="col-lg-4 sidebar ftco-animate">
            <div class="sidebar-box ftco-animate">
              <div class="wrap">
                <h3>예약하기</h3>
                <label><span class="icon-calendar">체크인</span></label>
                <input type="text" class="form-control checkin_date" placeholder="Check-in date">
                 <label><span class="icon-calendar">체크아웃</span></label>
                <input type="text" class="form-control checkout_date" placeholder="Check-out date">
                  <label><span class="icon-person">인원</span></label>
                 <div class="select-wrap">
                    <select name="" id="" class="form-control">
	                   <option value="">1 Adult</option>
	                   <option value="">2 Adult</option>
	                   <option value="">3 Adult</option>
	                   <option value="">4 Adult</option>
                    </select>
                  </div>
               <br><input type="submit" value="예약" class="btn btn-primary">
            </div>

      <%--       <div class="sidebar-box ftco-animate">
              <h3>Amenity</h3>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                <div class="text">
                  <div><span class="icon-check">욕실</span></div>
                  <h3 class="meta">${roomsDto.amenityBath }</h3>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                <div class="text">
                  <div><span class="icon-check">침실</span></div>
                  <h3 class="meta">${roomsDto.amenityBed }</h3>
                </div>
              </div>
              <div class="block-21 mb-4 d-flex">
                <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                <div class="text">
                  <div><span class="icon-check">부대시설</span></div>
                  <h3 class="meta">${roomsDto.facilities }</h3>
                </div>
              </div>
              </div> --%>

            <div class="sidebar-box ftco-animate">
              <h3>Information</h3>
              <ul class="list">
              	<li>${roomsDto.roomsInfo }</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section> <!-- .section -->


    <section class="instagram pt-5">
      <div class="container-fluid">
        <div class="row no-gutters justify-content-center pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2><span>Piacevole Photos</span></h2>
          </div>
        </div>
        <div class="row no-gutters">
          <div class="col-sm-12 col-md ftco-animate">
            <a href="${contextPath }/resources/bootstrap/images/hotels1.jpeg" class="insta-img image-popup" style="background-image: url(${contextPath }/resources/bootstrap/images/hotels1.jpeg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="${contextPath }/resources/bootstrap/images/hotels3.jpeg" class="insta-img image-popup" style="background-image: url(${contextPath }/resources/bootstrap/images/hotels3.jpeg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="${contextPath }/resources/bootstrap/images/hotel6.jpeg" class="insta-img image-popup" style="background-image: url(${contextPath }/resources/bootstrap/images/hotel6.jpeg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="${contextPath }/resources/bootstrap/images/hotels4.jpeg" class="insta-img image-popup" style="background-image: url(${contextPath }/resources/bootstrap/images/hotels4.jpeg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
          <div class="col-sm-12 col-md ftco-animate">
            <a href="${contextPath }/resources/bootstrap/images/hotels5.jpeg" class="insta-img image-popup" style="background-image: url(${contextPath }/resources/bootstrap/images/hotels5.jpeg);">
              <div class="icon d-flex justify-content-center">
                <span class="icon-instagram align-self-center"></span>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section>
