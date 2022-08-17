<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<div class="hero-wrap"
	style="background-image: url('${contextPath }/resources/bootstrap/images/bg_1.jpg');">
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
			<form action="#" method="post" class="bg-white p-5 contact-form">
				<div class="form-group">
					<p align="left">상품이미지 <span style="color: red;">*</span></p>
					<input type="file" name="memberId" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">객실 종류 <span style="color: red;">*</span></p>
					<select name="" class="form-control">
						<option value="">디럭스</option>
						<option value="">그랜드 디럭스</option>
						<option value="">프리미어</option>
						<option value="">그랜드 프리미어</option>
						<option value="">수페리어 스위트</option>
						<option value="">그랜드 스위트</option>
					</select>
				</div>
				<div class="form-group">
					<p align="left">전망 <span style="color: red;">*</span></p>
					<select name="" class="form-control">
						<option value="">시티뷰</option>
						<option value="">오션뷰</option>
					</select>
				</div>
				<div class="form-group">
					<p align="left">층수 <span style="color: red;">*</span></p>
					<input type="text" name="" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">가격 <span style="color: red;">*</span></p>
					<input type="text" name="" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">할인률 <span style="color: red;">*</span></p>
					<input type="text" name="" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">적립 포인트 <span style="color: red;">*</span></p>
					<input type="text" name="" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">침대 종류 <span style="color: red;">*</span></p>
					<input type="text" name="" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">침대 개수 <span style="color: red;">*</span></p>
					<input type="text" name="" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">객실 면적 <span style="color: red;">*</span></p>
					<input type="text" name="" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">방 개수 <span style="color: red;">*</span></p>
					<input type="text" name="" class="form-control">
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