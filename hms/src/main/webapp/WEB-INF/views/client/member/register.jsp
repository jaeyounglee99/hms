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
	
	$().ready(function(){

		
		
	
		$("#passwd").keyup(function(){
			$("#passwdValid").html("");
			var pw = $("#passwd").val();
			var num = pw.search(/[0-9]/g);
			var eng = pw.search(/[a-z]/ig);
			var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
			
			if(pw.length < 8 || pw.length > 20){
				$("#passwdValid").html("<p><span style='color:red;'>8자리 ~ 20자리 이내로 입력해주세요</span></p>")  
				  return false;
				 }else if(pw.search(/\s/) != -1){
					 $("#passwdValid").html("<p><span style='color:red;'>비밀번호는 공백 없이 영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.</span></p>") 
				  return false;
				 }else if( (num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0) ){
					 $("#passwdValid").html("<p><span style='color:red;'>비밀번호는 공백 없이 영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.</span></p>") 	
				  return false;
				 }else {
					 $("#passwdValid").html("<p><span style='color:green;'>사용가능한 비밀번호입니다</span></p>")
				 }
		});
		
		$("#confirmPw").keyup(function(){
			$("#confirmPwValid").html("");
			
			if ($("#passwd").val() != $("#confirmPw").val()) {
				$("#confirmPwValid").html("<p><span style='color:red;'>비밀번호 일치하지 않음</span></p>");
				return false;
			}
			else {
				$("#confirmPwValid").html("<p><span style='color:green;'>비밀번호 일치</span></p>");
			}
		});
		
		$("#email").blur(function(){
			
			var email = $("#email").val();
			var isValidEmail = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/;
			
			if (isValidEmail.test(email)) {
				$("#emailValid").html("<span></span>");
			}
			else {
				$("#emailValid").html("<p><span style='color:red;'>잘못된 이메일 형식입니다</span></p>");
				return false;
			}
		});
		
		$("form").submit(function(){
			
			var dateBirth = $("#birthY").val() + "-" + $("#birthM").val() + "-" + $("#birthD").val();
			$("[name='dateBirth']").val(dateBirth);
			
			$("#btnOverlapped").click(function(){
				
				$("input[name=checked_id]").val('y');
				
				var memberId = $("#memberId").val();
				
				
				$.ajax({
					url	 : "${contextPath}/member/checkDuplicatedId?memberId=" + memberId,
					type : "post",
					data : memberId ,
					async:false,
					success : function(data) {
						 if (data == "notDuplicate"){
				        	 $("#memberIdValid").html("<p><span style='color:green;'>사용할 수 있는 ID입니다</span></p>");
				          }
				         if (data == "Duplicate") {
				        	 $("#memberIdValid").html("<p><span style='color:red;'>이미 사용중인 ID입니다</span></p>");
							 $("#memberId").focus();
							 duplCheck = true;
				          }
					},
				});
				
				if (duplCheck){
				alert('ID를 확인해주세요');
				return false;
				} 
				
			});
			
				
			
			
			
			if ($("#memberId").val() == "") {
				$("#memberIdValid").html("<p><span style='color:red;'>아이디를 입력하세요</span></p>");
				$("#memberId").focus();
				return false;
			}

			
			if($("input[name='checked_id']").val()==''){
		        alert('아이디중복 확인을 해주세요.');
		        return false;
		    	}
			
			if ($("#passwd").val() == "") {
				$("#passwdValid").html("<p><span style='color:red;'>비밀번호를 입력하세요</span></p>")
				$("#passwd").focus();
				return false;
			}

			if ($("#confirmPw").val() == "") {
				$("#confirmPwValid").html("<p><span style='color:red;'>비밀번호를 확인하세요</span></p>")
				$("#confirmPw").focus();
				return false;
			}

			if ($("#memberNm").val() == "") {
				$("#memberNmValid").html("<p><span style='color:red;'>성명을 입력하세요</span></p>")
				$("#memberNm").focus();
				return false;
			}

			if ($("input[name='gender']:checked").val() != 'm' && $("input[name='gender']:checked").val() != 'f') {
				$("#genderValid").html("<p><span style='color:red;'>성별을 선택하세요</span></p>")
				$("input[name='gender']").focus();
				return false;
			}
			
			if ($("#email").val() == "") {
				$("#emailValid").html("<p><span style='color:red;'>이메일을 입력하세요</span></p>")
				$("#email").focus();
				return false;
			}

			if ($("#hp").val() == "") {
				$("#hpValid").html("<p><span style='color:red;'>연락처를 입력하세요</span></p>")
				$("#hp").focus();
				return false;
			}

			if ($("#postalCode").val() == "") {
				$("#postalCodeValid").html("<p><span style='color:red;'>우편번호를 입력하세요</span></p>")
				$("#postalCode").focus();
				return false;
			}

		});
		
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
							<span>Register</span>
						</p>
						<h1 class="mb-4 bread">Register</h1>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div align="center">
		<div class="comment-form-wrap pt-5" style="width: 40%">
			<h3 class="mb-5">회원가입</h3>
			<form action="${contextPath }/member/register" method="post" class="p-5 bg-light">
				<p align="left">
					아이디 <span style="color: red;">*</span>
				</p>
				<div class="form-group d-flex align-self-stretch">
					<input type="text" id="memberId" name="memberId" placeholder="아이디를 입력하세요." class="form-control" style="width: 80%">
					&emsp; <input type="button" id="btnOverlapped" value="중복확인" class="btn py-3 px-4 btn-primary">
					<input type="hidden" name="checked_id" value="">
				</div>
					<p align="left" id="memberIdValid"></p>
				<div class="form-group">
					<p align="left">비밀번호 <span style="color: red;">*</span></p>
					<input type="password" id="passwd" name="passwd" class="form-control">
					<p align="left" id="passwdValid"></p>
				</div>
				<div class="form-group">
					<p align="left">
						비밀번호 확인 <span style="color: red;">*</span>
					</p>
					<input type="password" id="confirmPw" placeholder="비밀번호를 확인하세요." class="form-control" >
					<p align="left" id="confirmPwValid"></p>
				</div>
				<div class="form-group">
					<p align="left">
						성명 <span style="color: red;">*</span>
					</p>
					<input type="text" id="memberNm" name="memberNm" class="form-control">
					<p align="left" id="memberNmValid"></p>
				</div>
				<div class="form-group" align="left">
					<p>
						성별 <span style="color: red;">*</span>
					</p>
	
					남 &nbsp;<input type="radio" name="gender" value="m"> &emsp; 여
					&nbsp;<input type="radio" name="gender" value="f"> <br> <br>
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
					 <input type="hidden" name="dateBirth"/>
					<p align="left" id="birthValid"></p>
				</div>
				<div class="form-group">
					<p align="left">
						이메일 <span style="color: red;">*</span>
					</p>
					<input type="text" id="email" name="email" class="form-control">
					<p align="left" id="emailValid"></p>
					<div class="form-group" align="left">
					<label for="emailstsYn">
					    HMS에서 발송하는 E-mail을 수신합니다.
					    <input type="checkbox" id="emailstsYn" name="emailstsYn" value="Y">
					    <span class="form-check-input"></span>
					</label>
					</div>
				</div>
				<div class="form-group">
					<p align="left">
						휴대전화 <span style="color: red;">*</span>
					</p>
					<input type="text" id="hp" name="hp" placeholder="숫자만 입력하세요." maxlength='11' class="form-control">
					<p align="left" id="hpValid"></p>
					<div class="form-group" align="left">
					<label for="smsstsYn">
					    HMS에서 발송하는 SMS 소식을 수신합니다.
					    <input type="checkbox" id="smsstsYn" name="smsstsYn" value="Y">
					    <span class="form-check-input"></span>
					</label>
					</div>
				</div>
				<p align="left">
					우편번호<span style="color: red;">*</span>
				</p>
				<div class="form-group d-flex align-self-stretch">
					<input type="text" id="postalCode" name="postalCode" class="form-control" style="width: 40%">
					&emsp; <input type="button" value="검색" onclick="execDaumPostcode();"
						class="btn py-3 px-4 btn-primary"
						style="width: 20%; padding-left: 0">
				</div>
				<p align="left" id="postalCodeValid"></p>
				<div class="form-group">
					<p align="left">
						도로명 주소 <span style="color: red;">*</span>
					</p>
					<input type="text" id="roadAddress" name="roadAddress" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">
						지번 주소 <span style="color: red;">*</span>
					</p>
					<input type="text" id="landAddress" name="landAddress" class="form-control">
				</div>
				<div class="form-group">
					<p align="left">
						상세주소 <span style="color: red;">*</span>
					</p>
					<input type="text" id="remainingAddress"  name="remainingAddress" class="form-control">
					<p align="left" id="remainingAddressValid"></p>
				</div>
				<div class="form-group" align="center">
					<input type="submit" value="회원가입" class="btn py-3 px-4 btn-primary"
						style="width: 80%">
				</div>
			</form>
		</div>
	</div>
</body>
</html>