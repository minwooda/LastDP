<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }/" />
<!-- ======= Header ======= -->
<header id="header" class="fixed-top d-flex align-items-center">
	<div class="container d-flex align-items-center">
		<h1 class="logo me-auto">
			<a class="navbar-brand" href="#">
				<i class="bi bi-house">&nbsp;슬기로운 휴게소 생활 </i>
			</a>
		</h1>
		<nav id="navbar" class="navbar">
			<ul>
				<li>
					<a href="#" class="active">Home</a>
				</li>
				<li>
					<a href="#">공지사항</a>
				</li>
				<li>
					<a href="#">건의사항</a>
				</li>
				<li>
					<a href="#">리뷰작성</a>
				</li>

				<li>
					<a href="#">로그인</a>
				</li>
				<li>
					<a href="${root }User/Join">회원가입</a>
				</li>
			</ul>
			<i class="bi bi-list mobile-nav-toggle"></i>
		</nav>
		<!-- .navbar -->
	</div>
</header>
<!-- End Header -->