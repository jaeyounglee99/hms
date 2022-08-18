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
		<div class="container">
			<table>
				<thead>
					<tr>
						<th width="10%">코드</th>
						<th width="65%">객실정보</th>
						<th width="15%">등록날짜</th>
						<th width="10%">수정/삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty roomsList }">
							<tr>
								<td colspan="3" align="center"><h6>조회된 상품이 없습니다.</h6></td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="roomsDto" items="${roomsList }" varStatus="i">
								<tr>
									<td>
										
									</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>				
				</tbody>
			</table>
		</div>
		<div align="right">
			<button type="button" onclick="javascript:location.href='${contextPath}/admin/rooms/adminRoomsAdd'" class="btn btn-primary py-3 px-5"><span>등록</span></button>
		</div>
	</div>
	</div>
</section>
</body>
</html>