<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<script src="${contextPath}/resources/ckeditor/ckeditor.js"></script> 
<script>
	$().ready(function(){
		
		$("[name='roomsNm']").val("${roomsDto.roomsNm}");
		$("[name='view']").val("${roomsDto.view}");
	});
</script>


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
						<span class="mr-2"><a href="${contextPath }/">Home</a></span>
						<span>Modify</span>
					</p>
					<h1 class="mb-4 bread">Modify Rooms</h1>
				</div>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section contact-section bg-light">
	<div class="container">
		<div class="row d-flex mb-5 contact-info">
			<div class="col-md-12 mb-4" align="center">
				<h2 class="h3">객실 정보 수정</h2>
			</div>
		</div>
		<div align="center">
		<div class="row block-9" style="width:70%">
			<form action="${contextPath }/admin/rooms/adminRoomsModify" method="post" enctype="multipart/form-data" class="bg-white p-5 contact-form">
			<input type="hidden" name="roomsCd" value="${roomsDto.roomsCd }">
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
						<option value="deluxeOceanviewTwin">디럭스 오션뷰 트윈</option>
						<option value="deluxeCityviewKing">디럭스 시티뷰 킹</option>
						<option value="deluxeCityviewTwin">디럭스 시티뷰 트윈</option>
						<option value="premierCityviewDouble">프리미어 시티뷰 더블</option>
						<option value="premierCityviewTwin">프리미어 시티뷰 트윈</option>
						<option value="premierOceanviewTwin">프리미어 오션뷰 트윈</option>
						<option value="superiorCityviewDouble">수페리어 시티뷰 더블</option>
						<option value="superiorOceanviewDouble">수페리어 오션뷰 더블</option>
						<option value="superiorOceanviewTwin">수페리어 오션뷰 트윈</option>
						<option value="kidsDeluxeKing">키즈 디럭스 킹</option>
						<option value="kidsCityviewKing">키즈 시티뷰 킹</option>
						<option value="kidsSuperiorOceanview">키즈 수페리어 오션뷰</option>
						<option value="piacevoleDeluxe">피아체볼레 디럭스</option>
						<option value="piacevoleClassic">피아체볼레 클래식</option>
						<option value="piacevolePremier">피아체볼레 프리미어</option>
						<option value="kidsSuite">키즈 스위트</option>
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
					<input type="text" name="floor" value="${roomsDto.floor }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">가격 <span style="color: red;">*</span></p>
					<input type="text" name="price" value="${roomsDto.price }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">할인률 <span style="color: red;">*</span></p>
					<input type="text" name="discountRate" value="${roomsDto.discountRate }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">적립 포인트 <span style="color: red;">*</span></p>
					<input type="text" name="point" value="${roomsDto.point }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">침대 종류 <span style="color: red;">*</span></p>
					<input type="text" name="bedNm" value="${roomsDto.bedNm }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">객실 면적 <span style="color: red;">*</span></p>
					<input type="text" name="size" value="${roomsDto.size }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">남은 방 수<span style="color: red;">*</span></p>
					<input type="text" name="stoke" value="${roomsDto.stoke }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">어메니티(욕실)<span style="color: red;">*</span></p>
					<input type="text" name="amenityBath" value="${roomsDto.amenityBath }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">어메니티(침실)<span style="color: red;">*</span></p>
					<input type="text" name="amenityBed" value="${roomsDto.amenityBed }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">부대시설 <span style="color: red;">*</span></p>
					<textarea rows="5" cols="100" name="facilities">${roomsDto.facilities }</textarea> 
                    <script>CKEDITOR.replace("facilities");</script>
				</div>
				<div class="form-group">
					<p align="left">객실소개 <span style="color: red;">*</span></p>
					<textarea rows="5" cols="100" name="roomsIntro">${roomsDto.roomsIntro }</textarea> 
                    <script>CKEDITOR.replace("roomsIntro");</script>
				</div>
				<div class="form-group">
					<p align="left">안내사항 <span style="color: red;">*</span></p>
					<textarea rows="5" cols="100" name="roomsInfo">${roomsDto.roomsInfo }</textarea> 
                    <script>CKEDITOR.replace("roomsInfo");</script>
				</div>
				<div class="form-group" align="right">
						<input type="submit" value="수정하기" class="btn btn-primary py-3 px-5">
				</div>
			</form>
		</div>
	</div>
	</div>
</section>
</body>
</html>