<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="${contextPath }/">Piacevole</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	        	<c:choose>
	        		<c:when test="${sessionScope.role eq 'admin' }">
			          	<li class="nav-item"><a href="${contextPath }/admin/rooms/adminRoomsList" class="nav-link">객실 등록</a></li>
	        		</c:when>
	        		<c:otherwise>
	        			<li class="nav-item"><a href="${contextPath }/rooms/roomsList" class="nav-link">객실</a></li>
	        		</c:otherwise>
	        	</c:choose>
	        	<c:choose>
	        		<c:when test="${sessionScope.role eq 'admin' }">
			          <li class="nav-item"><a href="restaurant.html" class="nav-link">프로모션 등록</a></li>
	        		</c:when>
					<c:otherwise>
						<li class="nav-item"><a href="rooms.html" class="nav-link">다이닝</a></li>
					</c:otherwise>	        	
	        	</c:choose>
	        	<c:choose>
	        		<c:when test="${sessionScope.role eq 'admin' }">
			          	<li class="nav-item"><a href="${contextPath }/admin/order/orderConfirm" class="nav-link">예약확인</a></li>
	        		</c:when>
					<c:otherwise>
						<li class="nav-item"><a href="restaurant.html" class="nav-link">프로모션</a></li>
					</c:otherwise>	        	
	        	</c:choose>
	          <c:choose>
	          	<c:when test="${sessionScope.role eq 'admin' }">
	          		 <li class="nav-item"><a href="${contextPath }/admin/member/adminLogout" class="nav-link">로그아웃</a></li>     	
	          	</c:when>
	          	<c:when test="${sessionScope.memberId eq null }">
			          <li class="nav-item"><a href="${contextPath }/member/login" class="nav-link">로그인</a></li>
	          	</c:when>
	          	<c:otherwise>
	          		 <li class="nav-item"><a href="${contextPath }/member/logout" class="nav-link">로그아웃</a></li>     	
	          	</c:otherwise>		          
	          </c:choose>
	          <c:choose>
	          	<c:when test="${sessionScope.role eq 'admin' }">
			    	<li class="nav-item"><a href="contact.html" class="nav-link">고객문의</a></li>
	          	</c:when>
	          	<c:otherwise>
	          		<li class="nav-item"><a href="contact.html" class="nav-link">고객문의</a></li>
	          	</c:otherwise>
	          </c:choose>
	        </ul>
	      </div>
	    </div>
	  </nav>
</body>
</html>