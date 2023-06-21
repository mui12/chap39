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
<link href="https://fonts.googleapis.com/css2?family=East+Sea+Dokdo&display=swap" rel="stylesheet">

<!-- Gaegu font -->
<link href="https://fonts.googleapis.com/css2?family=Gaegu&display=swap" rel="stylesheet">

<title>create.jsp</title>
<style>

.spacing {
  text-decoration: none;
}


.back {
	background: url("/img/대례지화이트.jpg");
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
	font-family: 'Gaegu', cursive;
	font-size: 21px;
	font-weight: bold;
}

.table_style {
	border-radius: 50px;


}

.font_board_write {
	font-size: 30px;
	margin-bottom: -40px;

}

.font_writing_button {
	text-align: center;
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
				<h1 class="topfont">나랏말싸미</h1>
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
 
	<br>
	<br>

	

	<!--  게시판 입력 리스트 -->
	<section class="container mt-5">
		<div class="row">
			<form action="/board/create" method="post">
				<h3 class="font_board_write">ㆅ 게시판 글쓰기</h3>
				<table class="table table-bordered table-sm table-hover col-sm-9">
					<tr>
						<td>아이디</td>
						<td>
							<input id="id"  name="id" value="${board.id}"/>
						</td>
					</tr>
					
					<tr>
						<td>비밀번호</td>
						<td>
							<input id="pwd"  name="pwd" value="${board.pwd}"/>
						</td>
					</tr>
					
					<br>
					<tr>
						<td>e-mail</td>
						<td>
							<input id="email"  name="email" value="${board.email}"/>
						</td>
					</tr>
		
					<br>
					<tr>
						<td>제목</td>
						<td><input id="subject" name="subject" value="${board.subject}" /></td>
					</tr>
		
					<br>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2">
							<textarea rows="10" cols="100" name=content placeholder="내용 입력하세요." value="${board.content}"></textarea>
						</td>
					</tr>
					
				</table>
				<div class="font_writing_button">
					<button type="submit" class="btn btn-primary">등록</button>
					<a href="/board/list"><button type="button" class="btn btn-secondary">취소</button></a>
				</div>
			</form>
		</div>
	</section>
	
	<section>
		<!-- 	error 접근	 -->
		<c:if test="${binding.hasErrors()}">
			<h2>Error Massage</h2>
			<hr>
			<c:forEach var="g" items="${binding.globalErrors}">
				<div>${g.code} ${g.defaultMessage}</div>
			</c:forEach>
			<hr>
			<c:forEach var="f" items="${binding.fieldErrors}">
				<div>${f.field} ${f.defaultMessage}</div>
			</c:forEach>
		</c:if>
	</section>
	
	<br>
	<br>
	
	<footer class="footer col-sm-12">
		<p>© 2023 Mui Developer | Design By Mui</p>
	</footer>
	
	

</body>
</html>

