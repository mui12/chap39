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
<!-- Gaegu -->
<link href="https://fonts.googleapis.com/css2?family=Gaegu&display=swap" rel="stylesheet">
<!-- Yeon Sung font -->
<link href="https://fonts.googleapis.com/css2?family=Yeon+Sung&display=swap" rel="stylesheet">

<title>home.jsp</title>
<style>

a {
    color: black;
    text-decoration: none;
}

.back {
	background: url("/img/대례지화이트.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	height: auto;
}

.topback {
	height: 250px;
	background: url("img/home_top.jpg");
	background-repeat:no-repeat;
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
	background-image:url("img/김홍도씨름.jpg");
	border: 0.2px ridge BurlyWood;
	border-radius: 15px;
	height: 250px;
}

.login_box:hover {
	background-image: url("img/대례지눈.jpg");
}

.logout_box {
    border: 1px solid white;
	background-color: #DCDCDC;
	text-align: center;
	height: 200px;
	border-radius: 8px;
	padding-top: 30px;
	opacity: 0.8;
}



.login_font {
    font-family: 'Yeon Sung', cursive;
	font-size: 22px;
	text-align: auto;
	padding: 40px 10px 10px 10px;
}

.logout_font {
	font-size: 15px;
}

.homename {
	font-family: 'Gaegu', cursive;
	font-size: 25px;
}

.homename_menebar {
	font-family: 'Yeon Sung', cursive;
	font-size: 21px;
	font-weight: bold;

}


.login_id {
	font-family: 'Gaegu', cursive;
	font-size: 25px;
	text-align: center;
	padding: 10px;

}

.login_button {
	font-family: 'Yeon Sung', cursive;
	font-size: 25px;
	text-align: center;
	width: 100%;
	border-radius: 10px;
	background-color: #D3D3D3;
}

.logout_button {
	text-align: center;
	padding-top: 20px;

}

.login_create{
	font-family: 'Yeon Sung', cursive;
	font-size: 22px;
	text-align: center;
    text-decoration: none;
	padding: 10px 0px 0px 15px;
}

.card_image {
	padding: 30px 0px 70px 50px;

}

.footer {
  height: 4rem;
  color: #ffffff;
  background-color: #A9A9A9;
  font-size: 15px;
  text-align: center;
  padding: 20px;
  position:relative;
  bottom: 0;
  left: 0;
  width: 100%;
  z-index: 9999;
}

</style>

</head>
<body class="back">

	<div class="container-fluid topback">
		<div class="row">
			<div class="col-sm-12">
				<h1 class="topfont"><a href="/">나랏말싸미</a></h1>
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
				<ul class="navbar-nav me-auto homename_menebar">
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
					<li class="nav-item"><a class="nav-link" href="/city/page/1/10">세계도시</a></li>	
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
			
			<div class="col-sm-1"></div>
			
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
					<div class="carousel-item">
						<img src="/img/조선신윤복.jpg" alt="조선신윤복" class="d-block"
							style="width: 800px; height: 300px;">
						<p>조선후기 신윤복 [단오 풍정]</p>
					</div>
					<div class="carousel-item active">
						<img src="/img/정선_인왕제색도.jpg" alt="정선_인왕제색도" class="d-block"
							style="width: 800px; height: 300px;">
							<p>조선후기 정선 [인왕제색도]</p>
					</div>
					<div class="carousel-item">
						<img src="/img/김홍도서당.jpg" alt="김홍도서당" class="d-block"
							style="width: 800px; height: 300px;">
							<p>조선후기 김홍도 [서당]</p>
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
				
				<!-- 설명 -->
				<h3>조선 후기 그림</h3>
				<p>조선 후기에 크게 유행하였습니다. 
				주로 사람들의 생활 모습을 재미있고 현실감 있게 표현하였습니다.</p>
				<br>
				
			</div>

			<div class="col-sm-1"></div>

			<!-- 비회원 -->
			
			<sec:authorize access="isAnonymous()">
				<div class="col-sm-3 login_box">
					<p class="login_font">더 안전하고 편리하게 이용하세요 :)</p>
					<div class="">
						<a href="/user/login"><button type="button" class="login_button">로그인</button></a>
					</div>
					<br>
					<div>
					<a class="login_create" href="#">아이디 찾기</a>
					<a class="login_create" href="#">비밀번호 찾기</a>
					<a class="login_create" href="/user/create">회원가입</a>
					</div>
				</div>
			</sec:authorize>
			
					
			<!-- 로그인 성공 -->
			<sec:authorize access="isAuthenticated()">
				<div class="container col-sm-3 logout_box">
					<span class="login_id">
						"<sec:authentication property="name"/>"
					</span>
					<span>님</span>
					<span class="homename">나랏말싸미</span>에
					<br>
					<span class="logout_font">오신것을 환영합니다.</span> 
					<br>
					<div class="container logout_button">
						<a href="#"><button type="button" class="btn btn-secondary">마이페이지</button></a>
						<a href="/user/logout"><button type="button" class="btn btn-secondary">logout</button></a>
					</div>
				</div>
			</sec:authorize>
			
		</div>
	</div>

	<div class="container mt-3 card_image">
		<div class="row row-cols-1 g-2" >
			<h3>한국사 인물</h3>
			
			<div class="card col-sm-2" style="width: 300px; margin: 5px;" >
				<img class="card-img-top" src="/img/전봉준.jpg" alt="전봉준"
					style="width: 100%; height: 200px;">
				<div class="card-body" style="background-color: #DCDCDC; margin: -4px;">
					<h4 class="card-title">전봉준</h4>
					<p class="card-text">제 1차 동학농민운동을 배산에서 봉기하여 주도하였습니다. 제 2차
						동학농민운동에서 남접으로 활동하였으나 전봉준은 공주 우금치 전투에서 패배하여 관군에게 페포되었습니다.</p>
				</div>
			</div>
			
			<div class="card col-sm-2" style="width: 300px; margin: 5px;">
				<img class="card-img-top" src="/img/안중근.jpg" alt="안중근"
					style="width: 100%; height: 200px;">
				<div class="card-body" style="background-color: #DCDCDC; margin: -4px;">
					<h4 class="card-title">안중근</h4>
					<p class="card-text">하얼빈역에서 을사늑약의 체결을 주도한 이토히로부미를 저격하였습니다.
					그리고 뤼순감옥에서 순국하셨습니다. "대한 독립의 소리가 천국에 들려오면 나는 마땅히 춤을 추면 마세를 부를 것이다.</p>
				</div>
			</div>
			
			<div class="card col-sm-2" style="width: 300px; margin: 5px;">
				<img class="card-img-top" src="/img/박은식.jpg" alt="박은식"
					style="width: 100%; height: 200px;">
				<div class="card-body" style="background-color: #DCDCDC; margin: -4px;">
					<h4 class="card-title">박은식</h4>
					<p class="card-text">황성신문을 주필하며 '한국통사'와 '한국독립운동지혈사'를 저술하였습니다.
					또한 민족의 정신을 '혼'으로 파악하였습니다. "나라는 없어질 수 있으나 그 역사는 결코 없어질 수 없다고 했으니,
					이는 나라가 형체라면 역사는 정신이기 때문이다."</p>
				</div>
			</div>
			
		</div>
	</div>
	
	
		<footer class="footer col-sm-12">
			<p>© 2023 Mui Developer | Design By Mui</p>
		</footer>
</body>
</html>

