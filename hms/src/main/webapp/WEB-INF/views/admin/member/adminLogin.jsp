<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html lang="en">
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
				<form action="${contextPath }/admin/member/adminLogin" method="post" class="bg-white p-5 contact-form">
					<p class="pt-1">
						관리자 로그인<span class="icon-long-arrow-right"></span>
					</p>
					<div class="form-group">
						<input type="text" name="adminId" class="form-control" placeholder="아이디">
					</div>
					<div class="form-group">
						<input type="password" name="passwd" class="form-control" placeholder="비밀번호">
					</div>
					<div class="form-group">
						<input type="submit" value="로그인" class="btn btn-primary py-3 px-5">
					</div>
				</form>
			</div>
		</div>
	</section>
	
</body>
</html>