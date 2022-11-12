<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
						<span>Order List</span>
					</p>
					<h1 class="mb-4 bread">Order List</h1>
				</div>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section contact-section bg-light">
	<div class="container">
		<div class="row d-flex mb-5 contact-info">
			<div class="col-md-12 mb-4" align="center">
				<h2 class="h3">예약 목록</h2>
			</div>
		</div>
		<div align="center">
		<div class="container">
			<table>
				<thead>
					<tr>
						<th width="45%">예약정보</th>
                        <th width="15%">예약자</th>
                        <th width="18%">체크인</th>
                        <th width="18%">체크아웃</th>
                        <th width="10%">인원</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty orderList}">
							<tr>
								<td colspan="4" align="center"><br><h6>예약 내역이 없습니다.</h6></td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="order" items="${orderList }">
								<tr>
                                    <td>
                                    	<img src="${contextPath }/thumbnails?roomsFileName=${order.roomsFileName1}" width="100" height="100">
                                    	<div>
											<br>
											<h6>&emsp;&emsp;&emsp;&emsp;<a href="${contextPath }/myPage/myOrderDetail?orderCd=${order.orderCd}">${order.roomsNm }</a></h6>
											<p>&emsp;&emsp;&emsp;&emsp;${order.view }뷰 | ${order.floor }층 | <fmt:formatNumber value="${order.price }"/>원</p>
										</div>
                                    </td>
                                    <td>${order.memberId }</td>
                                    <td>${order.checkIn }</td>
                                    <td>${order.checkOut }</td>
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
</body>
</html>