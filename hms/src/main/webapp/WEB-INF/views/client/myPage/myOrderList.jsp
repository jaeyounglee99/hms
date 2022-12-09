<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${sessionScope.memberId eq null}">
		<script>
			alert("로그인을 먼저 진행해주세요.");
			location.href = "${contextPath}/member/login";
		</script>
	</c:if>
	
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
						<span>Registration</span>
					</p>
					<h1 class="mb-4 bread">MyOrder</h1>
				</div>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section contact-section bg-light">
	<div class="container">
		<div class="row d-flex mb-5 contact-info">
			<div class="col-md-12 mb-4" align="center">
				<h2 class="h3">예약 조회</h2>
			</div>
		</div>
		<div align="center">
		<div class="container">
			<table>
				<thead>
					<tr>
						<th width="45%">객실명</th>
						<th width="40%">가격</th>
						<th width="10%">예약 날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty myOrderList }">
							<tr>
								<td colspan="3" align="center"><h6>조회된 상품이 없습니다.</h6></td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="myOrder" items="${myOrderList }" varStatus="i">
								<tr>
									<td class="row">
										<img src="${contextPath }/thumbnails?roomsFileName=${myOrder.roomsFileName1}" width="100" height="100">
										<div>
											<br>
											<h6>&emsp;&emsp;&emsp;&emsp;<a href="${contextPath }/myPage/myOrderDetail?orderCd=${myOrder.orderCd}&memberId=${myOrder.memberId}">${myOrder.roomsNm }</a></h6>
										</div>
									</td>
									<td><fmt:formatNumber value="${myOrder.paymentAmt }"/>원</td>
									<td><fmt:formatDate value="${myOrder.payOrderTime }" pattern="yyyy-MM-dd"/></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>				
				</tbody>
			</table>
			</div>
		</div>
	</div>
</section>
</body>
</html>