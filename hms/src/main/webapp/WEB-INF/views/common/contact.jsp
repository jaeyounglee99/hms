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
                <textarea name="content" cols="30" rows="7" class="form-control" placeholder="메세지를 입력하세요"></textarea>
              </div>
              <div class="form-group">
                <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
              </div>
            </form>
          
          </div>

          <div class="col-md-6 d-flex">
          	<div id="map" class="bg-white"></div>
          </div>
        </div>
      </div>
    </section>
	
</body>
</html>