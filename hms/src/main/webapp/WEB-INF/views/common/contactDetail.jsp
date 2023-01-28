<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
							<span class="mr-2"><a href="${contextPath }/">Home</a></span>
							<span>Contact</span>
						</p>
						<h1 class="mb-4 bread">Contact</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div align="center">
		<div class="comment-form-wrap pt-5" style="width: 60%">
			<h3 class="mb-5">고객 문의사항</h3>
			<div class="form-group">
				<p align="left">주문자 성함</p>
				<input type="text" value="${contactDto.name }" class="form-control" disabled>
			</div>
			<div class="form-group">
				<p align="left">주문자 연락처</p>
				<input type="text" value="${contactDto.email }" class="form-control" disabled>
			</div>
			<div class="form-group">
				<p align="left">제목</p>
				<input type="text" value="${contactDto.subject }" class="form-control" disabled>
			</div>
			<div class="form-group">
				<p align="left">상세 내용</p>
				<textarea cols="130" rows="10" class="form-control" disabled>${contactDto.content }</textarea>
			</div>
		</div>
	</div>
</body>
</html>