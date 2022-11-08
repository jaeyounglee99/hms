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
						<span>Member List</span>
					</p>
					<h1 class="mb-4 bread">Member List</h1>
				</div>
			</div>
		</div>
	</div>
</div>

<section class="ftco-section contact-section bg-light">
	<div class="container">
		<div class="row d-flex mb-5 contact-info">
			<div class="col-md-12 mb-4" align="center">
				<h2 class="h3">회원 리스트</h2>
			</div>
		</div>
		<div align="center">
		<div class="container">
			<table>
				<thead>
					<tr>
						<th width="10%">번호</th>
                        <th width="30%">회원아이디</th>
                        <th width="20%">회원이름</th>
                        <th width="15%">포인트</th>
                        <th width="15%">성별</th>
                        <th width="20%">가입일자</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty memberList}">
							<tr>
								<td colspan="3" align="center"><br><h6>가입된 회원이 없습니다.</h6></td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="memberDto" items="${memberList }" varStatus="i">
								<tr>
									<td>
                           		 		<h6>${i.count }</h6>
                                    </td>
                                 	<td class="row">
                                    	<h6><a href="${contextPath }">${memberDto.memberId }</a></h6>
                                    </td>
                                    <td>${memberDto.memberNm }</td>
                                    <td>${memberDto.point }</td>
                                    <td>${memberDto.gender }</td>
                                    <td><fmt:formatDate value="${memberDto.joinDt }" pattern="yyyy-MM-dd"/></td>
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