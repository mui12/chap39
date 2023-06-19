<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="alpha_letters_icon.png">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>
 
 
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<title>home.jsp</title>
<style>

.test{
	border: 1px solid red;

}


.topback {
	height: 250px;
	background: url("img/home.jpg") no-repeat;
	background-position: center;
	background-size: cover;
}

.slide_img{
	width: 200px;
	height: 300px;	

}


</style>

</head>
<body>

	<div class="container-fluid topback">
		<div class="row">
			<div class="col-sm-12">


			</div>
		</div>
	</div>
	
	
	
	<div>
	<sec:authorize access="isAuthenticated()">
		<sec:authentication property="name" /> 님 환영합니다.
		<a href="/user/logout">/user/logout</a>
	</sec:authorize>
	</div>

	
	<!--	 메뉴바	 -->
	<nav class="container navbar navbar-expand-sm navbar-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="/"> 
				<img src="img/데니태극기.jpg"  alt="" style="width: 40px;" class="rounded-pill">
			</a>

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#mynavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="#mynavbar">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="/information/testschedule">시험일정</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown">한국사</a>
						<ul class="dropdown-menu">
							<li><h5 class="dropdown-header">고대</h5></li>
							<li><a class="dropdown-item" href="#">삼국사기</a></li>
							<li><a class="dropdown-item" href="#">삼국유사</a></li>
							<li><h5 class="dropdown-header">고려시대</h5></li>
							<li><a class="dropdown-item" href="#">고려사</a></li>
							<li><a class="dropdown-item" href="#">제왕운기</a></li>
							<li><h5 class="dropdown-header">조선</h5></li>
							<li><a class="dropdown-item" href="#">조선 전기</a></li>
							<li><a class="dropdown-item" href="#">조선 후기</a></li>
							<li><h5 class="dropdown-header">근현대사</h5></li>
							<li><a class="dropdown-item" href="#">대한제국</a></li>
							<li><a class="dropdown-item" href="#">일제강점기</a></li>
							<li><a class="dropdown-item" href="#">대한민국</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link" href="#">위인</a></li>	
					<li class="nav-item"><a class="nav-link" href="/board/list">게시판</a></li>	
					<li class="nav-item"><a class="nav-link" href="#">고객지원</a></li>	
					<li class="nav-item"><a class="nav-link" href="#">마이페이지</a></li>	
				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="text" placeholder="Search">
        			<button class="btn btn-primary" type="button">Search</button>
				</form>
			</div>
		</div>
	</nav>
	
	
	<div class="container mt-5">
		<div class="row">
			<div class=" col-sm-8 test">
	
				<!-- 슬라이드 버튼 -->
				<div id="demo" class="carousel slide" data-bs-ride="carousel">
			
					<!-- Indicators/dots -->
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#demo" data-bs-slide-to="0"
							class="active"></button>
						<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
						<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
					</div>
			
				<!-- 사진 슬라이드쇼 -->
				<div class="carousel-inner slide_img container">
					<div class="carousel-item active">
						<img src="img/1.jpg" alt="" class="d-block">
						<div class="carousel-caption">
							<h3>Los Angeles</h3>
							<p>We had such a great time in LA!</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="img/2.jpg" alt="" class="d-block">
						<div class="carousel-caption">
							<h3>Chicago</h3>
							<p>Thank you, Chicago!</p>
						</div>
					</div>
					<div class="carousel-item">
						<img src="img/18.jpg" alt="" class="d-block">
						<div class="carousel-caption">
							<h3>New York</h3>
							<p>We love the Big Apple!</p>
						</div>
					</div>
				</div>
			
					<!-- Left and right controls/icons -->
					<button class="carousel-control-prev" type="button"
						data-bs-target="#demo" data-bs-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#demo" data-bs-slide="next">
						<span class="carousel-control-next-icon"></span>
					</button>
				</div>
			</div>
			
			
			
			<!-- 로그인 -->
			
			<div class=" col-sm-4 test">
				<div class="test">
					<p>더 안전하고 편리하게 이용하세요</p>
					<sec:authorize access="isAnonymous()">
					<a href="/user/login"><button>로그인</button></a>
					</sec:authorize>
					<br>
					<a href="#">아이디 찾기</a>
					<a href="#">비밀번호 찾기</a>
					<a href="#">회원가입</a>
				</div>
			</div>
			
		</div>
	</div>


</body>
</html>

