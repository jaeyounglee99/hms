<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="contextPath" value="${pageContext.request.contextPath}"  /> 

<!DOCTYPE html>
<html lang="en">
  <head>
    <title> <tiles:insertAttribute name="title"/></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">

    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/animate.css">
    
    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/magnific-popup.css">

    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/aos.css">

    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/ionicons.min.css">

    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/flaticon.css">
    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/icomoon.css">
    <link rel="stylesheet" href="${contextPath }/resources/bootstrap/css/style.css">
    <script src="${contextPath }/resources/bootstrap/js/jquery-3.2.1.min.js"></script>
  </head>
  <body>

    <tiles:insertAttribute name="header"/>
    <!-- END nav -->

    <tiles:insertAttribute name="body"/>

   <tiles:insertAttribute name="footer"/>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="${contextPath }/resources/bootstrap/js/jquery.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/popper.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/bootstrap.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/jquery.easing.1.3.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/jquery.waypoints.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/jquery.stellar.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/owl.carousel.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/jquery.magnific-popup.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/aos.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/jquery.animateNumber.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/bootstrap-datepicker.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/jquery.timepicker.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/scrollax.min.js"></script>
  <script src="${contextPath }/resources/bootstrap/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="${contextPath }/resources/bootstrap/js/google-map.js"></script>
  <script src="${contextPath }/resources/bootstrap/js/main.js"></script>
    
  </body>
</html>