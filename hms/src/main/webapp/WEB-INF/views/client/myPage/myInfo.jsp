<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	
function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {

            var fullRoadAddr = data.roadAddress; 
            var extraRoadAddr = ''; 

            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            if (data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            if (extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }
            if (fullRoadAddr !== ''){
                fullRoadAddr += extraRoadAddr;
            }

            document.getElementById('postalCode').value = data.zonecode; //5자리 새우편번호 사용
            document.getElementById('roadAddress').value = fullRoadAddr;
            document.getElementById('landAddress').value = data.jibunAddress;
          
        }
    }).open();
}

	$().ready(function(){
		
		var dateBirth = $("[name='dateBirth']").val().split("-");
		$("#birthY").val(dateBirth[0]);
		$("#birthM").val(dateBirth[1]);
		$("#birthD").val(dateBirth[2]);
	});
	
	
</script>
</head>
<body>
	
	<div class="hero-wrap"
		style="background-image: url('${contextPath}/resources/bootstrap/images/main.header.jpeg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
				<div
					class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
					<div class="text">
						<p class="breadcrumbs mb-2">
							<span class="mr-2"><a href="${contextPath }/">Home</a></span>
							<span>MyPage</span>
						</p>
						<h1 class="mb-4 bread">MyPage</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div align="center">
		<div class="comment-form-wrap pt-5" style="width: 60%">
			<h3 class="mb-5">내 가입정보</h3>
			<form action="${contextPath }/myPage/modifyInfo" method="post" class="p-5 bg-light">
				<p align="left">
					아이디 <span style="color: red;">*</span>
				</p>
				<div class="form-group d-flex align-self-stretch">
					<input type="text" id="memberId" name="memberId" value="${memberDto.memberId }" class="form-control" readonly>
				</div>
				<div class="form-group">
					<p align="left">비밀번호 <span style="color: red;">*</span></p>
					<input type="password" id="passwd" name="passwd" value="${memberDto.passwd }" class="form-control" readonly>
				</div>
				<div class="form-group">
					<p align="left">포인트 <span style="color: red;">*</span></p>
					<input type="text" id="point" name="point" value="${memberDto.point }" class="form-control" readonly>
				</div>
				<div class="form-group">
					<p align="left">
						성명 <span style="color: red;">*</span>
					</p>
					<input type="text" id="memberNm" name="memberNm" value="${memberDto.memberNm }" class="form-control">
					<p align="left" id="memberNmValid"></p>
				</div>
				<div class="form-group" align="left">
					<p>
						성별 <span style="color: red;">*</span>
					</p>
	
					남 &nbsp;<input type="radio" name="gender" value="m" <c:if test="${memberDto.gender eq 'm'}">checked</c:if>> &emsp; 여
					&nbsp;<input type="radio" name="gender" value="f" <c:if test="${memberDto.gender eq 'f'}">checked</c:if>> <br> <br>
					<p align="left" id="genderValid"></p>
					<p align="left">
						생년월일 <span style="color: red;">*</span>
					</p>
					<select id="birthY">
						<c:forEach var="i" begin="0" end="2022">
							<option>${2022 - i}</option>
						</c:forEach>
					</select>년 <select id="birthM">
						<c:forEach var="i" begin="1" end="12">
							<c:choose>
								<c:when test="${i < 10 }">
									<option>0${i}</option>
								</c:when>
								<c:otherwise>
									<option>${i}</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>월 <select id="birthD">
						<c:forEach var="i" begin="1" end="31">
							<c:choose>
								<c:when test="${i < 10 }">
									<option>0${i}</option>
								</c:when>
								<c:otherwise>
									<option>${i}</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>일
					 <input type="hidden" name="dateBirth" value="${memberDto.dateBirth }"/>
					<p align="left" id="birthValid"></p>
				</div>
				<div class="form-group">
					<p align="left">
						이메일 <span style="color: red;">*</span>
					</p>
					<input type="text" id="email" name="email" value="${memberDto.email }" class="form-control">
					<p align="left" id="emailValid"></p>
					<div class="form-group" align="left">
					<label for="emailstsYn">
					    HMS에서 발송하는 E-mail을 수신합니다.
					    <input type="checkbox" id="emailstsYn" name="emailstsYn" value="Y" <c:if test="${memberDto.emailstsYn eq 'Y'}">checked</c:if>>
					    <span class="form-check-input"></span>
					</label>
					</div>
				</div>
				<div class="form-group">
					<p align="left">
						휴대전화 <span style="color: red;">*</span>
					</p>
					<input type="text" id="hp" name="hp" value="${memberDto.hp }" placeholder="숫자만 입력하세요." maxlength='11' class="form-control">
					<p align="left" id="hpValid"></p>
					<div class="form-group" align="left">
					<label for="smsstsYn">
					    HMS에서 발송하는 SMS 소식을 수신합니다.
					    <input type="checkbox" id="smsstsYn" name="smsstsYn" value="Y"  <c:if test="${memberDto.smsstsYn eq 'Y'}">checked</c:if>>
					    <span class="form-check-input"></span>
					</label>
					</div>
				</div>
				<p align="left">
					우편번호<span style="color: red;">*</span>
				</p>
				<div class="form-group d-flex align-self-stretch">
					<input type="text" id="postalCode" name="postalCode" value="${memberDto.postalCode }" class="form-control" style="width: 40%">
					&emsp; <input type="button" value="검색" onclick="execDaumPostcode();"
						class="btn py-3 px-4 btn-primary"
						style="width: 20%; padding-left: 0">
				</div>
				<p align="left" id="postalCodeValid"></p>
				<div class="form-group">
					<p align="left">
						도로명 주소 <span style="color: red;">*</span>
					</p>
					<input type="text" id="roadAddress" name="roadAddress" value="${memberDto.roadAddress }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">
						지번 주소 <span style="color: red;">*</span>
					</p>
					<input type="text" id="landAddress" name="landAddress" value="${memberDto.landAddress }" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">
						상세주소 <span style="color: red;">*</span>
					</p>
					<input type="text" id="remainingAddress"  name="remainingAddress" value="${memberDto.remainingAddress }" class="form-control">
					<p align="left" id="remainingAddressValid"></p>
				</div>
				<div class="form-group" align="right">
					<input type="submit" value="수정" class="btn py-3 px-4 btn-primary"
						style="width: 20%">
				</div>
			</form>
		</div>
	</div>
</body>
</html>