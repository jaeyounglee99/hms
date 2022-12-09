<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<c:set var="contextPath" value="${pageContext.request.contextPath}"  /> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <section class="home-slider owl-carousel">
      <div class="slider-item" style="background-image:url(${contextPath }/resources/bootstrap/images/main.header.jpeg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-12 ftco-animate text-center">
          	<div class="text mb-5 pb-3">
	            <h1 class="mb-3">Welcome To Piacevole</h1>
	            <h2>Hotels &amp; Resorts</h2>
            </div>
          </div>
        </div>
        </div>
      </div>

      <div class="slider-item" style="background-image:url(${contextPath }/resources/bootstrap/images/main.header2.jpeg);">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-center">
          <div class="col-md-12 ftco-animate text-center">
          	<div class="text mb-5 pb-3">
	            <h1 class="mb-3">Enjoy A Luxury Experience</h1>
	            <h2>Join With Us</h2>
            </div>
          </div>
        </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftc-no-pb ftc-no-pt">
			<div class="container">
				<div class="row">
					<div>
						<iframe width="475" height="665"  src="https://www.youtube.com/embed/7WSy2lMb_kY" frameborder="0"></iframe>
					</div>
					<div class="col-md-7 py-5 wrap-about pb-md-5 ftco-animate">
	          <div class="heading-section heading-section-wo-line pt-md-5 pl-md-5 mb-5">
	          	<div class="ml-md-0">
		          	<span class="subheading">Welcome to Piacevole Hotel</span>
		            <h2 class="mb-4">Welcome To Our Hotel</h2>
	            </div>
	          </div>
	          <div class="pb-md-5">
							<p> 피아체볼레 호텔은 대담하면서도 매력적인 디자인과 감수성이 풍부하고 재치있는 마인드로 가득 채워진 몰입형 라이프스타일 호텔입니다. 진보적인 마인드의 국내 고객과 새롭고 흥미로운 문화 체험을 원하는 외국인 관광객 모두에게 이상적인 선택입니다. </p>
							<p> 지중해식의 요리, 앨티튜드에서의 파티, 블라인드 스팟에서의 세련된 칵테일, 럼퍼스 룸 혹은 프리빌리지에서의 건배에 이르기까지 모두를 만족시킬 다양한 맛과 분위기가 준비되어 있습니다.</p>
							<p> 피아체볼레에서 다양한 문화 체험을 즐기고 소중한 사람들과의 특별한 추억을 남겨보세요. </p>
							<ul class="ftco-social d-flex">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-google-plus"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="ftco-section">
      <div class="container">
        <div class="row d-flex">
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services py-4 d-block text-center">
              <div class="d-flex justify-content-center">
              	<div class="icon d-flex align-items-center justify-content-center">
              		<span class="flaticon-reception-bell"></span>
              	</div>
              </div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">25/7 Front Desk</h3>
                <p>A small river named Duden flows by their place and supplies.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services py-4 d-block text-center">
              <div class="d-flex justify-content-center">
              	<div class="icon d-flex align-items-center justify-content-center">
              		<span class="flaticon-serving-dish"></span>
              	</div>
              </div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">Restaurant Bar</h3>
                <p>A small river named Duden flows by their place and supplies.</p>
              </div>
            </div>    
          </div>
          <div class="col-md-3 d-flex align-sel Searchf-stretch ftco-animate">
            <div class="media block-6 services py-4 d-block text-center">
              <div class="d-flex justify-content-center">
              	<div class="icon d-flex align-items-center justify-content-center">
              		<span class="flaticon-car"></span>
              	</div>
              </div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">Transfer Services</h3>
                <p>A small river named Duden flows by their place and supplies.</p>
              </div>
            </div>      
          </div>
          <div class="col-md-3 d-flex align-self-stretch ftco-animate">
            <div class="media block-6 services py-4 d-block text-center">
              <div class="d-flex justify-content-center">
              	<div class="icon d-flex align-items-center justify-content-center">
              		<span class="flaticon-spa"></span>
              	</div>
              </div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">Spa Suites</h3>
                <p>A small river named Duden flows by their place and supplies.</p>
              </div>
            </div>      
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section bg-light">
    	<div class="container">
				<div class="row justify-content-center mb-5 pb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
            <h2 class="mb-4">Our Rooms</h2>
          </div>
        </div>    		
    		<div class="row">
    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
    				<div class="room">
    					<a href="${contextPath }/rooms/roomsDetail?roomsCd=1" class="img d-flex justify-content-center align-items-center" style="background-image: url(${contextPath }/resources/bootstrap/images/deluxe.jpeg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3 text-center">
    						<h3 class="mb-3"><a href="${contextPath }/rooms/roomsDetail?roomsCd=1">Deluxe Room</a></h3>
    						<hr>
    						<p class="pt-1"><a href="${contextPath }/rooms/roomsDetail?roomsCd=1" class="btn-custom">View Room Details <span class="icon-long-arrow-right"></span></a></p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
    				<div class="room">
    					<a href="${contextPath }/rooms/roomsDetail?roomsCd=4" class="img d-flex justify-content-center align-items-center" style="background-image: url(${contextPath }/resources/bootstrap/images/premierOcean.jpeg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3 text-center">
    						<h3 class="mb-3"><a href="${contextPath }/rooms/roomsDetail?roomsCd=4">Premier Room</a></h3>
    						<hr>
    						<p class="pt-1"><a href="${contextPath }/rooms/roomsDetail?roomsCd=4" class="btn-custom">View Room Details <span class="icon-long-arrow-right"></span></a></p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
    				<div class="room">
    					<a href="${contextPath }/rooms/roomsDetail?roomsCd=7" class="img d-flex justify-content-center align-items-center" style="background-image: url(${contextPath }/resources/bootstrap/images/superiorOceanviewTwin1.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3 text-center">
    						<h3 class="mb-3"><a href="${contextPath }/rooms/roomsDetail?roomsCd=7">Superior Room</a></h3>
    						<hr>
    						<p class="pt-1"><a href="${contextPath }/rooms/roomsDetail?roomsCd=7" class="btn-custom">View Room Details <span class="icon-long-arrow-right"></span></a></p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
    				<div class="room">
    					<a href="${contextPath }/rooms/roomsDetail?roomsCd=11" class="img d-flex justify-content-center align-items-center" style="background-image: url(${contextPath }/resources/bootstrap/images/kidsdeluxeKing1.jpeg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3 text-center">
    						<h3 class="mb-3"><a href="${contextPath }/rooms/roomsDetail?roomsCd=11">Kids Room</a></h3>
    						<hr>
    						<p class="pt-1"><a href="${contextPath }/rooms/roomsDetail?roomsCd=11" class="btn-custom">View Room Details <span class="icon-long-arrow-right"></span></a></p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
    				<div class="room">
    					<a href="${contextPath }/rooms/roomsDetail?roomsCd=13" class="img d-flex justify-content-center align-items-center" style="background-image: url(${contextPath }/resources/bootstrap/images/piacevoleDeluxe1.jpg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3 text-center">
    						<h3 class="mb-3"><a href="${contextPath }/rooms/roomsDetail?roomsCd=13">Piacevole Room</a></h3>
    						<hr>
    						<p class="pt-1"><a href="${contextPath }/rooms/roomsDetail?roomsCd=13" class="btn-custom">View Room Details <span class="icon-long-arrow-right"></span></a></p>
    					</div>
    				</div>
    			</div>
    			<div class="col-sm col-md-6 col-lg-4 ftco-animate">
    				<div class="room">
    					<a href="${contextPath }/rooms/roomsDetail?roomsCd=17" class="img d-flex justify-content-center align-items-center" style="background-image: url(${contextPath }/resources/bootstrap/images/premierSuite1.jpeg);">
    						<div class="icon d-flex justify-content-center align-items-center">
    							<span class="icon-search2"></span>
    						</div>
    					</a>
    					<div class="text p-3 text-center">
    						<h3 class="mb-3"><a href="${contextPath }/rooms/roomsDetail?roomsCd=17">Suite Room</a></h3>
  							<hr>
    						<p class="pt-1"><a href="${contextPath }/rooms/roomsDetail?roomsCd=17" class="btn-custom">View Room Details <span class="icon-long-arrow-right"></span></a></p>
    					</div>
    				</div>
    			</div>
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
</body>
</html>