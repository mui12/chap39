<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
<!-- Gaegu font -->
<link href="https://fonts.googleapis.com/css2?family=Gaegu&display=swap" rel="stylesheet">
<!-- Yeon Sung font -->
<link href="https://fonts.googleapis.com/css2?family=Yeon+Sung&display=swap" rel="stylesheet">

<title>update.jsp</title>
<style>

body {
	background: url("/img/대례지화이트.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	height: 1300px;
}


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
	font-family: 'Yeon Sung', cursive;
	font-size: 21px;
	font-weight: bold;
}

.table_style {
	border-radius: 50px;


}

.font_board_write {
	font-family: 'Yeon Sung', cursive;
	font-size: 50px;

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
  position: fixed;
  bottom: 0;
  width: 100%;
  z-index: 9999;
}

.board_color {
	background-color: #DCDCDC;
	border: 2px solid #D3D3D3;
}

.board_font {
	font-family: 'Yeon Sung', cursive;
	font-size: 25px;
	text-align: center;
}

.board_input_font {
	font-family: 'Yeon Sung', cursive;
	font-size: 20px;
}


</style>
</head>
<body>
	<style>

body {
	background: url("/img/대례지화이트.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	height: 1300px;
}


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
	font-family: 'Yeon Sung', cursive;
	font-size: 21px;
	font-weight: bold;
}

.table_style {
	border-radius: 50px;


}

.font_board_write {
	font-family: 'Yeon Sung', cursive;
	font-size: 50px;

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
  position: fixed;
  bottom: 0;
  width: 100%;
  z-index: 9999;
}

.board_color {
	background-color: #DCDCDC;
	border: 2px solid #D3D3D3;
}

.board_font {
	font-family: 'Yeon Sung', cursive;
	font-size: 25px;
	text-align: center;
}

.board_input_font {
	font-family: 'Yeon Sung', cursive;
	font-size: 20px;
}

</style>
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
 
	<br>
	<br>


	<section class="container">
		<form action="/board/delete" method="post">
			<div class="mb-3">
				<label class="form-lable mb-2" for="bno">bno<span>*</span></label>
				<input class="form-control" id="bno" name="bno" value="${board.bno}" disabled="disabled" /> 
				<input class="form-control" id="bno" name="bno" value="${board.bno}" type="hidden" />
			</div>
			<div class="mb-3">
				<label class="form-lable mb-2" for="id">id<span>*</span></label>
				<input class="form-control" id="id" name="id" value="${board.id}" disabled="disabled" /> 
				<input class="form-control" id="id" name="id" value="${board.id}" type="hidden" />
			</div>
			<div class="mb-3">
				<label class="form-lable mb-2" for="pwd">pwd<span>*</span></label>
				<input class="form-control" id="pwd" name="pwd" value="${board.pwd}" disabled="disabled" /> 
				<input class="form-control" id="pwd" name="pwd" value="${board.pwd}" type="hidden" />
			</div>
			<div class="mb-3">
				<label class="form-lable mb-2" for="email">email<span>*</span></label>
				<input class="form-control" id="email" name="email" value="${board.email}" disabled="disabled" /> 
				<input class="form-control" id="email" name="email" value="${board.email}" type="hidden" />
			</div>
			<div class="mb-3">
				<label class="form-lable mb-2" for="subject">subject<span>*</span></label>
				<input class="form-control" id="subject" name="subject" value="${board.subject}" disabled="disabled" /> 
				<input class="form-control" id="subject" name="subject" value="${board.subject}" type="hidden" />
			</div>
			<div class="mb-3">
				<label class="form-lable mb-2" for="content">content<span>*</span></label>
				<input class="form-control" id="content" name="content" value="${board.content}" disabled="disabled" /> 
				<input class="form-control" id="content" name="content" value="${board.content}" type="hidden" />
			</div>
			<div class="mb-3">
				<label class="form-lable mb-2" for="created">created<span>*</span></label>
				<input class="form-control" id="created" name="created" value="${board.created}" disabled="disabled" /> 
				<input class="form-control" id="created" name="created" value="${board.created}" type="hidden" />
			</div>
			<div class="mb-3">
				<label class="form-lable mb-2" for="hitcount">hitcount<span>*</span></label>
				<input class="form-control" id="hitcount" name="hitcount" value="${board.hitcount}" disabled="disabled" /> 
				<input class="form-control" id="hitcount" name="hitcount" value="${board.hitcount}" type="hidden" />
			</div>
			<button type="submit" class="btn btn-primary">삭제</button>
		</form>
	</section>
	<hr>
	<c:if test="${binding.hasErrors()}">
		<h2>Error Massage</h2>
		<hr>
		<c:forEach var="g" items="${binding.globalErrors}">
			<div>${g.code}${g.defaultMessage}</div>
		</c:forEach>
		<hr>
		<c:forEach var="f" items="${binding.fieldErrors}">
			<div>${f.field}${f.defaultMessage}</div>
		</c:forEach>
	</c:if>

		<footer class="footer col-sm-12">
		<p>© 2023 Mui Developer | Design By Mui</p>
	</footer>

</body>
</html>

