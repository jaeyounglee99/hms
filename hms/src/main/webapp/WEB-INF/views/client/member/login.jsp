<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<span>login</span>
					</p>
					<h1 class="mb-4 bread">login</h1>
				</div>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section contact-section bg-light">
	<div class="container">
		<div class="row d-flex mb-5 contact-info">
			<div class="col-md-12 mb-4">
				<h2 class="h3">login</h2>
			</div>
		</div>
		<div class="row block-9">
			<div class="col-md-6 order-md-last d-flex">
				<form action="${contextPath }/member/login" method="post" class="bg-white p-5 contact-form">
					<p class="pt-1">
						회원로그인<span class="icon-long-arrow-right"></span>
					</p>
					<div class="form-group">
						<input type="text" name="memberId" class="form-control" placeholder="아이디">
					</div>
					<div class="form-group">
						<input type="password" name="passwd" class="form-control" placeholder="비밀번호">
					</div>
					<div class="form-group">
						<input type="submit" value="로그인" class="btn btn-primary py-3 px-5">
						<a href="${contextPath }/member/register"><span
							class="btn btn-primary py-3 px-5">회원가입</span></a>
					</div>
				</form>
			</div>
			<div class="col-md-6 order-md-last d-flex">
				<form action="#" class="bg-white p-5 contact-form">
					<p class="pt-1">
						비회원로그인<span class="icon-long-arrow-right"></span>
					</p>
					<div class="form-group">
						<input type="text" name="nMemberCd" class="form-control" placeholder="예약번호">
					</div>
					<div class="form-group">
						<input type="text" name="nMemberNm" class="form-control" placeholder="이름">
					</div>
					<div class="form-group">
						<input type="submit" value="로그인" class="btn btn-primary py-3 px-5">
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
</body>
</html>