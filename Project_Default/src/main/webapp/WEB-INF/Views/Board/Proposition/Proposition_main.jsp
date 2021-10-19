<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Proposition_main</title>
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
					<h3>건의사항</h3>
					<ol>
						<li>
							<a href="${ root }Home">Home</a>
						</li>
						<li>건의사항</li>
					</ol>
				</div>
			</div>
		</section>
		<!-- End Breadcrumbs -->

		<section>
			<div class="container">
				<h4 class="card-title">건의사항</h4>
					<table class="table table-hover" id="board_list">
						<thead>
							<tr>
								<th class="text-center d-none d-md-table-cell">글번호</th>
								<th class="w-50">제목</th>
								<th class="text-center d-none d-md-table-cell">작성자</th>
								<th class="text-center d-none d-md-table-cell">작성날짜</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center d-none d-md-table-cell">글번호</td>
								<td><a href="board_read.html">글 제목 입니다</a></td>
								<td class="text-center d-none d-md-table-cell">작성자</td>
								<td class="text-center d-none d-md-table-cell">작성날짜</td>
							</tr>
						</tbody>
					</table>
					
					<div class="d-none d-md-block">
						<ul class="pagination justify-content-center">
							<li class="page-item">
								<a href="#" class="page-link">&laquo;</a>
							</li>
							<li class="page-item">
								<a href="#" class="page-link">1</a></li>
							<li class="page-item">
								<a href="#" class="page-link">&raquo;</a>
							</li>
						</ul>
					</div>
					<div>
						<a href="#" class="btn btn-light">글쓰기</a>
					</div>
			</div>
		</section>
	</main>

</body>
</html>