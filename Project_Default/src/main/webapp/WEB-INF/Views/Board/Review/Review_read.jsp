<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Review_read</title>
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
</head>
<body>

	<!-- 상단 -->
	<c:import url="/WEB-INF/Views/Include/Top.jsp" />

	<main id="main">
		<!-- ======= Breadcrumbs ======= -->
		<section id="breadcrumbs" class="breadcrumbs">
			<div class="container">
				<div class="d-flex justify-content-between align-items-center">
					<h3>리뷰작성</h3>
					<ol>
						<li>
							<a href="${ root }Home">Home</a>
						</li>
						<li>리뷰작성</li>
						<li>글보기</li>
					</ol>
				</div>
			</div>
		</section>
	<!-- End Breadcrumbs -->
	
		<section>
			<div class="container">
				<div class="row">
					<div class="col-sm-3"></div>
					<div class="col-sm-6">
						<div class="form-group">
							<label for="review_writer_name">작성자</label> 
							<input type="text" id="review_writer_name" name="review_writer_name" class="form-control" readonly="readonly" />
						</div><br />
						<div class="form-group">
							<label for="review_date">작성일</label> 
							<input type="text" id="review_date" name="review_date" class="form-control" readonly="readonly" />
						</div><br />
						<div class="form-group">
							<label for="review_subject">제목</label> 
							<input type="text" id="review_subject" name="review_subject" class="form-control" readonly="readonly" />
						</div><br />
						<div class="form-group">
							<label for="rest_name">휴게소지점</label> 
							<input type="text" id="rest_name" name="rest_name" class="form-control" readonly="readonly" />
						</div><br />
						<div class="form-group">
							<label for="review_content">내용</label>
							<textarea name="review_content" id="review_content" class="form-control" cols="30" rows="10" style="resize: none" readonly="readonly"></textarea>
						</div><br />
						<div class="form-group">
							<label for="review_file">이미지</label> 
							<img src="#" width="100%" />
						</div><br />
						<div class="form-group">
							<a href="#" class="btn btn-light">목록보기</a> 
							<a href="#" class="btn btn-info">수정하기</a> 
							<a href="#" class="btn btn-warning">삭제하기</a>
						</div><br />
					</div>
				</div>
			</div>
		</section>
		
	</main>	

</body>
</html>