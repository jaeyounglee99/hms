<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<script src="${contextPath}/resources/ckeditor/ckeditor.js"></script> 

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
				<h2 class="h3">객실 등록</h2>
			</div>
		</div>
		<div align="center">
		<div class="row block-9" style="width:70%">
			<form action="${contextPath }/admin/rooms/adminRoomsAdd" method="post" enctype="multipart/form-data" class="bg-white p-5 contact-form">
				<div class="form-group">
					<p align="left">상품이미지1 <span style="color: red;">*</span></p>
					<input type="file" name="roomsFileName1" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">상품이미지2 <span style="color: red;">*</span></p>
					<input type="file" name="roomsFileName2" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">상품이미지3 <span style="color: red;">*</span></p>
					<input type="file" name="roomsFileName3" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">객실 종류 <span style="color: red;">*</span></p>
					<select name="roomsNm" class="form-control">
						<option value="deluxeOceanViewTwin">디럭스 오션뷰 트윈</option>
						<option value="deluxeCityViewKing">디럭스 시티뷰 킹</option>
						<option value="deluxeCityViewTwin">디럭스 시티뷰 트윈</option>
						<option value="premierCityViewDouble">프리미어 시티뷰 더블</option>
						<option value="premierOceanViewTwin">프리미어 오션뷰 트윈</option>
						<option value="grandPremierCityViewTwin">프리미어 시티뷰 트윈</option>
						<option value="superiorSuite">수페리어 스위트</option>
						<option value="premierSuite">프리미어 스위트</option>
						<option value="grandSuite">그랜드 스위트</option>
					</select>
				</div>
				<div class="form-group">
					<p align="left">전망 <span style="color: red;">*</span></p>
					<select name="view" class="form-control">
						<option value="city">시티뷰</option>
						<option value="ocean">오션뷰</option>
					</select>
				</div>
				<div class="form-group">
					<p align="left">층수 <span style="color: red;">*</span></p>
					<input type="text" name="floor" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">가격 <span style="color: red;">*</span></p>
					<input type="text" name="price" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">할인률 <span style="color: red;">*</span></p>
					<input type="text" name="discountRate" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">적립 포인트 <span style="color: red;">*</span></p>
					<input type="text" name="point" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">침대 종류 <span style="color: red;">*</span></p>
					<input type="text" name="bedNm" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">객실 면적 <span style="color: red;">*</span></p>
					<input type="text" name="size" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">남은 방 수<span style="color: red;">*</span></p>
					<input type="text" name="stoke" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">어메니티(욕실)<span style="color: red;">*</span></p>
					<input type="text" name="amenityBath" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">어메니티(침실)<span style="color: red;">*</span></p>
					<input type="text" name="amenityBed" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">부대시설 <span style="color: red;">*</span></p>
					<textarea rows="5" cols="100" name="facilities" placeholder="부대시설을 입력하세요."></textarea> 
                    <script>CKEDITOR.replace("facilities");</script>
				</div>
				<div class="form-group">
					<p align="left">객실소개 <span style="color: red;">*</span></p>
					<textarea rows="5" cols="100" name="roomsIntro" placeholder="객실 소개를 입력하세요."></textarea> 
                    <script>CKEDITOR.replace("roomsIntro");</script>
				</div>
				<div class="form-group">
					<p align="left">안내사항 <span style="color: red;">*</span></p>
					<textarea rows="5" cols="100" name="roomsInfo" placeholder="안내항을 입력하세요."></textarea> 
                    <script>CKEDITOR.replace("roomsInfo");</script>
				</div>
				<div class="form-group" align="right">
						<input type="submit" value="등록" class="btn btn-primary py-3 px-5">
				</div>
			</form>
		</div>
	</div>
	</div>
</section>
</body>
</html>