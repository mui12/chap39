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

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<!-- Gaegu -->
<link href="https://fonts.googleapis.com/css2?family=Gaegu&display=swap" rel="stylesheet">
<!-- Yeon Sung font -->
<link href="https://fonts.googleapis.com/css2?family=Yeon+Sung&display=swap" rel="stylesheet">

<title>page.jsp</title>
<style>

a {
    color: black;
    text-decoration: none;
}

body {
	background: url("/img/대례지화이트.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	height: auto;
}

.spacing{
	text-decoration: none;
}

.table_line{
	background-color:#D3D3D3; 
}

.page {
	text-align: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.h1 {
	text-align: center;
}

.topback {
	height: 250px;
	background: url("/img/home_top.jpg") no-repeat;
	background-position: center;
	background-size: cover;
}

.topfont {
	font-family: 'Gaegu', cursive;
	font-size: 70px;
	text-align: center;
	padding-top: 40px;
}

.top_button_location {
	text-align: right;
	padding-top: 15px;
	padding-right: 25px;
}

.top_button {
	color: white;
	font-size: 18px;
}

.homename_menebar {
	font-family: 'Yeon Sung', cursive;
	font-size: 21px;
	font-weight: bold;
}

.font_writing_button {
	text-align: right;
	margin-bottom: -35px;

}


.footer {
	height: 4rem;
	color: #ffffff;
	background-color: #A9A9A9;
	font-size: 15px;
	text-align: center;
	padding: 20px;
	position: relative;
	bottom: 0;
	left: 0;
	width: 100%;
	z-index: 9999;
}


.pagination_bar {
	padding: 30px;
}

.world_map {
	text-align: center;
	opacity: 0.9;
	position: relative;
}

.world_map img {
  max-width: 50%;
  height: auto;
  display: block;
  border-radius: 100px; /* 원하는 radius 값을 지정하세요 */
  margin: 0 auto; /* 이미지 중앙 정렬을 위해 사용 */
}



</style>
</head>
<body>

	<div class="container-fluid topback">
		<div class="row">
			<div class="col-sm-12">
				<div class="top_button_location">
					<a href="/"><button type="button" class="btn btn-outline-white top_button">Home</button></a>
					<a href="/user/logout"><button type="button" class="btn btn-outline-black top_button">logout</button></a>
				</div>
				<a href="/" style="text-decoration: none; color: black;"><h1 class="topfont">나랏말싸미</h1></a>
			</div>
		</div>
	</div>
	
	<!--	 메뉴바	 -->
	<nav class="navbar navbar-expand-sm navbar-light bg-Secondary">
		<div class="container-fluid">
			<a class="navbar-brand" href="/"> 
				<img src="/img/데니태극기.jpg"  alt="" style="width: 40px;" class="rounded-pill">
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

	<!-- 타이틀 -->
	<h1 class="h1">
		City Page
		<button type="button" class="btn btn-secondary btn-lg">${paging.pageNum}</button>
	</h1>
	<hr>
	
	
	<!-- 세계지도 -->
	<div class="world_map">
		<img alt="세계지도" src="/img/세계지도.jpg" >
	</div>
	
	
	
	<!-- City 리스트 -->
	
	<section class="container">
	
		<!-- 글쓰기 버튼 -->
		<div class="col-sm-12">
				<a href="/city/create"><button type="button" class="btn btn-secondary font_writing_button">추가</button></a>
		</div>	
	
		<!-- 	page table	 -->
		<div class="container mt-5" page>
				<table class="table table-bordered table-hover table_line">
					<thead>
						<tr style="text-align: center;">
							<th>id</th>
							<th>name</th>
							<th>countryCode</th>
							<th>district</th>
							<th>population</th>
						</tr>
					</thead>
			
					<tbody class="table-light">
						<c:forEach var="e" items="${list}">
							<tr>
								<td style="text-align: center;"><a class="spacing" href="/city/detail/${e.id}">${e.id}</a></td>
								<td style="text-align: center;"><a class="spacing" href="/city/detail/${e.id}">${e.name}</a></td>
								<td style="text-align: center;"><a class="spacing" href="/city/detail/${e.id}">${e.countryCode}</a></td>
								<td style="text-align: center;"><a class="spacing" href="/city/detail/${e.id}">${e.district}</a></td>
								<td align="right"><fmt:formatNumber pattern="###,###,###,###"
										value="${e.population}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		
			<!-- 	pagenation	 -->
			<ul class="pagination justify-content-center pagination_bar">
				<li class="page-item disabled"><a class="page-link"
					href="/city/page/${paging.navigateFirstPage-1}/${paging.pageSize}">Previous</a></li>
				
				<c:forEach var="n" items="${paging.navigatepageNums}">
					<c:choose>
						<c:when test="${n eq paging.pageNum}">
							<li class="page-item active"><a
								href="/city/page/${n}/${paging.pageSize}"
								class="page-link">${n}</a></li>
						</c:when>
						<c:when test="${n ne paging.pageNum}">
							<li class="page-item       "><a
								href="/city/page/${n}/${paging.pageSize}"
								class="page-link">${n}</a></li>
						</c:when>
					</c:choose>
				</c:forEach>
				<li class="page-item"><a class="page-link"
					href="/city/page/${paging.navigateLastPage+1}/${paging.pageSize}">Next</a></li>
			</ul>
	</section>
	
	<footer class="footer col-sm-12">
		<p>© 2023 Mui Developer | Design By Mui</p>
	</footer>
	

</body>
</html>

