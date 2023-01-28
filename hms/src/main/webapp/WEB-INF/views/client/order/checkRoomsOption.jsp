<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script>
	
	$(function(){
		
		getTotalPrice();
		
		$("#decBreakfastQtyBnt").click(function(){
				
			if ($("#breakfastQty").val() == '0') {
				return false;
			}
			$("#breakfastQty").val((Number($("#breakfastQty").val()) - 1));
			getTotalPrice();
		});

		$("#incBreakfastQtyBnt").click(function(){

			$("#breakfastQty").val((Number($("#breakfastQty").val()) + 1));
			getTotalPrice();
		});
		

		$("#decPoolQtyBnt").click(function(){
				
			if ($("#swimmingPoolQty").val() == '0') {
				return false;
			}
			$("#swimmingPoolQty").val((Number($("#swimmingPoolQty").val()) - 1));
			getTotalPrice();			
		});

		$("#incPoolQtyBnt").click(function(){

			$("#swimmingPoolQty").val((Number($("#swimmingPoolQty").val()) + 1));
			getTotalPrice();			
		});
		
	});	

	function getTotalPrice() {
		
		var breakfast = $("#breakfastQty").val();
		var swimmingPool = $("#swimmingPoolQty").val();
		var roomPrice = ${(orderInfo.price - (orderInfo.price * orderInfo.discountRate / 100)) * orderDto.stayPeriod }
			totalPrice = roomPrice + (34000 * Number(breakfast)) + (46000 * Number(swimmingPool));
			totalPrice = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',') + " 원";
		$("#totalPrice").html(totalPrice);
	}
	
	function processOrderList(){
		
		var breakfast = Number($("#breakfastQty").val());
		var swimmingPool = Number($("#swimmingPoolQty").val());
		var checkIn = "${orderDto.checkIn}";
		var checkOut = "${orderDto.checkOut}";
		var roomsCd = ${orderInfo.roomsCd};
		var paymentAmt = ${(orderInfo.price - (orderInfo.price * orderInfo.discountRate / 100)) * orderDto.stayPeriod } + (34000 * Number(breakfast)) + (46000 * Number(swimmingPool));
		var totalPoint = ${orderInfo.point * orderDto.stayPeriod};
		
		location.href = "${contextPath}/order/orderRooms?roomsCd="+roomsCd+"&checkIn="+checkIn+"&checkOut="+checkOut+"&stayPeriod="+${orderDto.stayPeriod}+"&personnel="+${orderDto.personnel}
						+"&breakfast="+breakfast+"&swimmingPool="+swimmingPool+"&paymentAmt="+paymentAmt+"&totalPoint="+totalPoint;
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
			<div class="categories">
				<h5>your order</h5>
				<hr>
				<ul>
					<li>
						<span style="display: inline-block; width: 20%; text-align: justify;">product</span>
						<span style="display: inline-block; width: 15%; text-align: justify;">check-in</span>
						<span style="display: inline-block; width: 15%; text-align: justify;">check-out</span> 
						<span style="display: inline-block; width: 10%; text-align: justify;">stayPeriod</span> 
						<span style="display: inline-block; width: 10%; text-align: justify;">person</span> 
						<span style="display: inline-block; width: 20%; text-align: justify;">price</span>
					</li>
					<li>
						<span style="display: inline-block; width: 20%; text-align: justify;">${orderInfo.roomsNm }</span> 
						<span style="display: inline-block; width: 15%; text-align: justify;">${orderDto.checkIn }</span>
						<span style="display: inline-block; width: 15%; text-align: justify;">${orderDto.checkOut }</span>
						<span style="display: inline-block; width: 10%; text-align: justify;">${orderDto.stayPeriod }박</span>
						<span style="display: inline-block; width: 10%; text-align: justify;">${orderDto.personnel }명</span>
						<span style="display: inline-block; width: 20%; text-align: justify;"><fmt:formatNumber value="${(orderInfo.price - orderInfo.price * orderInfo.discountRate / 100) * orderDto.stayPeriod }"/>원</span>
					</li>
					<li>
						<span>point</span>
						<span style="display: inline-block; width: 75%; text-align: right;"><fmt:formatNumber value="${orderInfo.point * orderDto.stayPeriod}"/>P적립</span>
					</li>
				</ul><hr>
				<br>
				<ul>
					<li>
						<span>조식 추가 | 34,000원</span> &emsp;
						<span><input type="button" id="decBreakfastQtyBnt" value="-"></span>
						<input type="text" id="breakfastQty" value="0" disabled style="width:3%">
						<span><input type="button" id="incBreakfastQtyBnt" value="+"></span>
						<br>
						<p>- 조식이 이미 포함되어 있는 패키지의 경우, 별도의 신청을 하지 않으셔도 됩니다.</p>
						<p>- 사전 추가된 조식의 경우 특별요금이 적용된 혜택으로, 체크인 후 미사용 시 환불이 불가합니다.</p>
						<p>- 코로나19에 따른 사회적 거리두기 정부 시책이 진행될 경우, 뷔페 조식은 다른 장소 및 단품 메뉴로 대체 제공될 수 있습니다.</p>
					</li>
				</ul><br><br>
				<ul>
					<li>
						<span>수영장 이용 | 46,000원</span> &emsp;
						<span><input type="button" id="decPoolQtyBnt" value="-"></span>
						<input type="text" id="swimmingPoolQty" value="0" disabled style="width:3%">
						<span><input type="button" id="incPoolQtyBnt" value="+"></span><br><br>
						<p>- 눈병, 피부병, 기타 공중 위생에 영향을 미치는 환자는 수영장에 입장할 수 없으며, 수영장 안에 침을 뱉거나 코를 푸는 행동을 금합니다.</p>
						<p>- 수영장 실내에서는 외부 신발을 벗고, 반드시 수영복 재질의 의류를 착용한 후 물에 들어가시기 바랍니다</p>
						<p>- 노약자 및 12세 미만 어린이는 반드시 보호자와 동행하여 주시기 바랍니다.</p>
						<p>- 수영장 이용 시 수질관리를 위하여 일정 시간 동안 수질 정비가 진행 될 수 있습니다.</p>
						<p>- 수영장 입장 시 외부 음식물 반입이 불가 하며, 귀중품은 반드시 리셉션 데스크에 별도로 보관해 주십시오.</p>
						<p>- 모든 고객은 안전요원의 지시에 따라야 하며, 이를 어길 시 수영장 이용이 제한될 수 있습니다.</p>
						<p>- 몸에 이상이 있을 때에는 즉시 물 밖으로 나와 휴식을 취하여 주십시오.</p>
						<p>- 호텔 측에서는 수영장 이용 시 발생하는 사고나 상해에 대하여 책임지지 않습니다.</p>
					</li>
				</ul>
				<hr>
				<ul>
					<li>Total 
						<span style="display: inline-block; width: 78%; text-align: right" id="totalPrice"></span>
					</li>
					<div align="right">
					<input type="button" value="예약하기" onclick="javascript:processOrderList();" class="btn btn-primary" style="width:25%">
					</div>
				</ul>
				<br>
				<br>
			</div>
		</div>
	</section>
</body>
</html>