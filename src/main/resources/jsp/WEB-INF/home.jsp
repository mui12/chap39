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

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap" rel="stylesheet">

<!-- Gaegu -->
<link href="https://fonts.googleapis.com/css2?family=Gaegu&display=swap" rel="stylesheet">


<title>home.jsp</title>
<style>

.back {
	background: url("img/대례지화이트.jpg");
}

.topback {
	height: 250px;
	background: url("img/home_top.jpg") no-repeat;
	background-position: center;
	background-size: cover;
}

.topfont {
	font-family: 'Gaegu', cursive;
	font-size: 70px;
	text-align: center;
	padding-top: 90px;
}

.login_box {
	background-image:url("img/대례지볓빛.jpg");
	border: 0.2px solid BurlyWood;
	border-radius: 5px;
	opacity: 0.7;
}

.login_box:hover {
	background-image: url("img/대례지눈.jpg");
}

.login_font {
	font-size: 26px;
	text-align: center;
	padding: 30px 10px 10px 10px;
}

.login_button {
	text-align: center;
	width: 90%;
	padding: 10px;
}


.login_create{
	font-family: 'East Sea Dokdo', cursive;
	font-size: 25px;
	text-align: center;
	text-decoration: none;
	padding: 30px 10px 10px 10px;
}


.footer {
  background-color: #0099cc;
  color: #ffffff;
  text-align: center;
  font-size: 12px;
  padding: 15px;
}

</style>

</head>
<body class="back">

	<div class="container-fluid topback">
		<div class="row">
			<div class="col-sm-12">
				<h1 class="topfont">나랏말싸미</h1>
			</div>
		</div>
	</div>
	
	<!--	 메뉴바	 -->
	<nav class="navbar navbar-expand-sm navbar-light bg-Secondary">
		<div class="container-fluid">
			<a class="navbar-brand" href="/"> 
				<img src="img/데니태극기.jpg"  alt="" style="width: 40px;" class="rounded-pill">
			</a>

			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse container" id="#mynavbar">
				<ul class="navbar-nav me-auto">
					<li class="nav-item">
						<a class="nav-link" href="/information/testschedule">시험일정</a></li>
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">한국사</a>
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
			<!-- Carousel -->
			<div id="demo" class="carousel slide col-sm-7" data-bs-ride="carousel">

				<!-- Indicators/dots -->
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#demo" data-bs-slide-to="0"
						class="active"></button>
					<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
					<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
				</div>

				<!-- The slideshow/carousel -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="img/고구려_수렵도.jpg" alt="고구려_수렵도" class="d-block"
							style="width: 800px; height: 300px;">
							<p>고구려 수렵도</p>
					</div>
					<div class="carousel-item">
						<img src="img/작호도.jpg" alt="작호도" class="d-block"
							style="width: 800px; height: 300px;">
							<p>작호도</p>
					</div>
					<div class="carousel-item">
						<img src="img/조선신윤복.jpg" alt="조선신윤복" class="d-block"
							style="width: 800px; height: 300px;">
						<p>조선 신윤복</p>
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

			<div class="col-sm-2"></div>

			<!-- 로그인 -->
			
			<div class=" col-sm-3 login_box">
				<p class="login_font">더 안전하고 편리하게 이용하세요 :)</p>
				<div class="container text-center">
					<sec:authorize access="isAnonymous()">
					<a href="/user/login"><button type="button" class="btn btn-secondary login_button">로그인</button></a>
					</sec:authorize>
				</div>
				<br>
				<div class="login_create">
				<a href="#">아이디 찾기</a>
				<a href="#">비밀번호 찾기</a>
				<a href="/user/create">회원가입</a>
				</div>
			</div>
			<div>
			<sec:authorize access="isAuthenticated()">
				<sec:authentication property="name" /> 님 환영합니다.
				<a href="/user/logout">/user/logout</a>
			</sec:authorize>
			</div>
		
		</div>
	</div>

	<div class="container mt-3">
	  <h3>우리나라 전통 그림</h3>
	  <p>중국으로부터 유래되어 주로 먹, 안료로종이에 그리는 전통적인 양식의 회화를 동양화 한국화라고 지칭합니다.</p>
	</div>

			
	

</body>
</html>

