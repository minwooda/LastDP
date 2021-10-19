<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>Review_modify</title>
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
<style>
	.star-rating {
		display: flex;
		flex-direction: row-reverse;
		font-size: 2.25rem;
		line-height: 2.5rem;
		justify-content: space-around;
		padding: 0 0.2em;
		text-align: center;
		width: 5em;
	}
	
	.star-rating input {
		display: none;
	}
	
	.star-rating label {
		-webkit-text-fill-color: transparent;
		/* Will override color (regardless of order) */
		-webkit-text-stroke-width: 2.3px;
		-webkit-text-stroke-color: #2b2a29;
		cursor: pointer;
	}
	
	.star-rating :checked ~ label {
		-webkit-text-fill-color: gold;
	}
	
	.star-rating label:hover, .star-rating label:hover ~ label {
		-webkit-text-fill-color: #fff58c;
	}
</style>
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
						<li>수정하기</li>
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
						<form action="#" method="post">
							<div class="form-group">
								<label for="review_writer_name">작성자</label>
								<input type="text" id="review_writer_name" name="review_writer_name" class="form-control" readonly="readonly" />
							</div><br />
							<div class="form-group">
								<label for="review_date">작성일</label> 
								<input type="text" id="review_date" name="review_date" class="form-control" readonly="readonly" />
							</div><br />
							<div class="form-group">
								<label for="board_subject">제목</label>
								<input type="text" id="review_subject" name="review_subject" class="form-control" />
							</div><br />
							<div class="form-gruop">
								<div class="star-rating space-x-4 mx-auto">
									<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
										<label for="5-stars" class="star pr-4">★</label>
									<input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
										<label for="4-stars" class="star">★</label>
									<input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
										<label for="3-stars" class="star">★</label>
									<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
										<label for="2-stars" class="star">★</label>
									<input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
										<label for="1-star" class="star">★</label>
								</div>
							</div><br />
							<div class="form-group">
								<label for="rest_name">휴게소 지점</label><br />
								<select name="rest_name" id="rest_name">
									<option value="">-----------</option>
									<option value="">서울만남의광장휴게소</option>	
									<option value="">서울문산고속도로 고양휴게소</option>	
									<option value="">구리휴게소 일산방향</option>	
									<option value="">하남드림휴게소</option>	
									<option value="">고양휴게소(서울방향)</option>	
									<option value="">양주휴게소 일산방향</option>	
								</select>
							</div><br />
							<div class="form-group">
								<label for="review_content">내용</label>
								<textarea name="review_content" id="review_content" class="form-control" cols="30" rows="10" style="resize:none"></textarea>
							</div><br />
							<div class="form-group">
								<label for="review_file">첨부 이미지</label>
								<input type="file" id="review_file" name="review_file" class="form-control" accept="image/*"/>
							</div><br />
							<div class="form-gruop">
								<a href="#" class="btn btn-info">수정완료</a>
								<a href="#" class="btn btn-warning">취소</a>
							</div>
						</form>
					</div>
				</div>
			</div>

		</section>
		
	</main>	

</body>
</html>