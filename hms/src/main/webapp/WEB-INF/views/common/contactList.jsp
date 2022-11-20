<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
	
	function removeContact() {
		
		
		var contactCdList = "";
		if (confirm("정말로 삭제하시겠습니까?")) {
			
			$("[name='contactCd']:checked").each(function(){
				contactCdList += $(this).val() + ",";
			});
			
			if (contactCdList == "") {
				alert("삭제할 내역이 없습니다.");
				return;
			}
			
			location.href = "${contextPath}/removeContact?contactCdList="+contactCdList;
		}
		
	}
	
	function selectAllContact() {
		if ($("#changeAllChoice").prop("checked")) {
			$("[name='contactCd']").prop("checked" , true);
		}
		else {
			$("[name='contactCd']").prop("checked" , false);
		}
	}
	
</script>
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

<section class="ftco-section contact-section bg-light">
	<div class="container">
		<div class="row d-flex mb-5 contact-info">
			<div class="col-md-12 mb-4" align="center">
				<h2 class="h3">고객 문의사항</h2>
			</div>
		</div>
		<div align="center">
		<div class="container">
			<div align="right">
			<h6><input type="checkbox" id="changeAllChoice" onchange="selectAllContact()"> &nbsp;전체선택</h6>
			</div><br>
			<table>
				<thead>
					<tr>
						<th width="5%"></th>
                        <th width="30%">제목</th>
                        <th width="20%">작성자</th>
                        <th width="35%">메일</th>
                        <th width="10%">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${empty contactList}">
							<tr>
								<td colspan="3" align="center"><h6>조회된 상품이 없습니다.</h6></td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="contactDto" items="${contactList }" varStatus="i">
								<tr>
									<td><input type="checkbox" name="contactCd" value="${contactDto.contactCd }"></td>
                                 	<td class="row">
                                    <h6><a href="${contextPath }/contactDetail?contactCd=${contactDto.contactCd}">${contactDto.content }</a></h6>
                                    </td>
                                    <td>${contactDto.name }</td>
                                    <td>${contactDto.email }</td>
                                    <td><fmt:formatDate value="${contactDto.regDt }" pattern="yyyy-MM-dd"/></td>
			                        </tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>				
				</tbody>
			</table>
			</div>
		</div>
	</div><br><br><br>
	<div class="container" align="right">
			<button type="button" onclick="removeContact();" class="btn btn-primary py-3 px-5"><span>컨텐츠 삭제</span></button>
		</div>
</section>
</body>
</html>