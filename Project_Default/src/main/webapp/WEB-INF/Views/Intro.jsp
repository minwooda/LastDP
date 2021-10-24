<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Intro</title>
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
<!-- Vendor CSS Files -->
<link rel="stylesheet" href="assets/vendor/animate.css/animate.min.css">
<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" href="assets/vendor/boxicons/css/boxicons.min.css">
<link rel="stylesheet" href="assets/vendor/glightbox/css/glightbox.min.css">
<link rel="stylesheet" href="assets/vendor/remixicon/remixicon.css">
<link rel="stylesheet" href="assets/vendor/swiper/swiper-bundle.min.css">
<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
<!-- Vendor JS Files -->
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
<!-- Template Main JS File -->
<script src="sassets/js/main.js"></script>
<!-- =======================================================
* Template Name: Sailor - v4.5.0
* Template URL: https://bootstrapmade.com/sailor-free-bootstrap-theme/
* Author: BootstrapMade.com
* License: https://bootstrapmade.com/license/
======================================================== -->
<body>
	<c:import url="/WEB-INF/Views/Include/Top.jsp" />
	<section id="hero">
		<div id="heroCarousel" data-bs-interval="3000" class="carousel slide carousel-fade" data-bs-ride="carousel">
			<ol class="carousel-indicators" id="hero-carousel-indicators">
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
					<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
					<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
				</div>
			</ol>
			<div class="carousel-inner" role="listbox">
				<!-- 첫번째 화면 -->
				<div class="carousel-item active" style="background-image: url()">
					<div class="carousel-container">
						<div class="container">
							<h2 class="animate__animated animate__fadeInDown">첫번째 이미지</h2>
							<p class="animate__animated animate__fadeInUp">문구 정할것</p>
							<a href="${root }User/Join" class="btn-get-started animate__animated animate__fadeInUp scrollto">시작하기</a>
						</div>
					</div>
				</div>
				<!-- 두번째 화면 -->
				<div class="carousel-item" style="background-image: url()">
					<div class="carousel-container">
						<div class="container">
							<h2 class="animate__animated animate__fadeInDown">두번째 이미지</h2>
							<p class="animate__animated animate__fadeInUp">문구 정할것</p>
							<a href="#" class="btn-get-started animate__animated animate__fadeInUp scrollto">시작하기</a>
						</div>
					</div>
				</div>
				<!-- 세번째 화면 -->
				<div class="carousel-item" style="background-image: url()">
					<div class="carousel-container">
						<div class="container">
							<h2 class="animate__animated animate__fadeInDown">세번째 이미지</h2>
							<p class="animate__animated animate__fadeInUp">문구 정할것</p>
							<a href="#" class="btn-get-started animate__animated animate__fadeInUp scrollto">시작하기</a>
						</div>
					</div>
				</div>
			</div>

			<a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev"> 
				<span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
			</a> 
			<a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next"> 
				<span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
			</a>

		</div>
	</section>

</body>
</html>