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
          <div class="col-md-12 mb-4">
            <h2 class="h3">Contact Information</h2>
          </div>
          <div class="w-100"></div>
        </div>
        <div class="row block-9">
          <div class="col-md-6 order-md-last d-flex">
            <form action="${contextPath}/contact" method="post" class="bg-white p-5 contact-form">
              <div class="form-group">
                <input type="text" name="name" class="form-control" placeholder="이름을 입력하세요">
              </div>
              <div class="form-group">
                <input type="text" name="email" class="form-control" placeholder="Email을 입력하세요">
              </div>
              <div class="form-group">
                <input type="text" name="subject" class="form-control" placeholder="제목을 입력하세요">
              </div>
              <div class="form-group">
                <textarea name="content" cols="30" rows="15" class="form-control" placeholder="메세지를 입력하세요"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
              </div>
            </form>
          </div>
          
          <!-- 지도 -->
          <div class="col-md-6 d-flex">
					<div id="daumRoughmapContainer1600749162322"
						class="mymap root_daum_roughmap root_daum_roughmap_landing os_mac"
						style="z-index: 2; width: 450px;">

					<script charset="UTF-8" class="daum_roughmap_loader_script"
						src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
					<script charset="UTF-8"
						src="http://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/b88f2e2f/roughmapLander.js"></script>
					<script charset="UTF-8"
						src="http://t1.daumcdn.net/kakaomapweb/place/jscss/roughmap/b88f2e2f/roughmapLander.js"></script>
					<!-- 3. 실행 스크립트 -->
					<script charset="UTF-8">
						new daum.roughmap.Lander({
							"timestamp" : "1600749162322",
							"key" : "226ga",
							"mapWidth" : "450",
							"mapHeight" : "707"
						}).render();
					</script>
				</div>
			</div>
				
        </div>
      </div>
    </section>
</body>
</html>