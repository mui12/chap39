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

<title>login.jsp</title>
<style>

a {
	font-family: 'Yeon Sung', cursive;
	font-size: 23px;
    color: black;
}

.spacing {
  margin: 0 10px; /* 좌우 여백 조정 */
  text-decoration: none;
}

.back {
	background: url("/img/test_back.jpg");
	background-repeat: no-repeat;
	background-size: cover;
	height: auto;
}

.home_img img {
    border-radius: 100px;
    max-width: 20%;
    max-height: 20%;
	padding: 30px;
	display: block; 
    margin: 0 auto; 
}

.line {
	border: 4px solid #F5F5F5;
	border-radius: 15px;
}

.padding {
	padding: 10px;
	text-align: center;
	font-weight: board;
}

.ID_login_font {
	font-family: 'Yeon Sung', cursive;
	font-size: 23px;
}


.login_button {
	font-family: 'Yeon Sung', cursive;
	font-size: 25px;
	background-color: #FAEBD7;	
	border-color: #DCDCDC;
	border-radius: 10px;
	text-align: center;
	width: 100%;
	padding: 10px;
	
}


.footer {
  height: 4rem;
  color: #ffffff;
  background-color: #A9A9A9;
  font-size: 15px;
  text-align: center;
  padding: 20px;
  position:fixed;
  bottom: 0;
  left: 0;
  width: 100%;
  z-index: 9999;
}


</style>
</head>
<body class="back">

	<!-- 홈으로 가기 그림 -->
	<div class="container">
		<a href="/" class="home_img"><img alt="" src="/img/나랏말싸미.jpg"></a>
	</div>

	<!-- 로그인 -->
	<div class="container mt-5">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6 line">
				
				<!--  로그인 바 -->
				<ul class="nav nav-tabs nav-justified">
					<li class="nav-item"><a class="nav-link ID_login_font" href="#">ID 로그인</a></li>
					<li class="nav-item"><a class="nav-link ID_login_font" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link ID_login_font" href="#">Link</a></li>
				</ul>
				
				<section class="container">
					<form action="/user/login" method="post">
						<div class="form-floating mt-3 mb-3">
							<input type="text"     class="form-control" name="username" value="${param.username}" placeholder="아이디" />
							<label>아이디</label>
						</div>
						<div class="form-floating mt-3 mb-3">
							<input type="password" class="form-control" name="password" value="${param.password}" placeholder="비밀번호"/>
							<label>비밀번호</label>
						</div>
			
						<div>
							<!-- exception이 null이 아니면 (Boolean(X)) -->
							<c:if test="${exception ne null}">
								<div class="alert alert-warning">${exception.message}</div>
							</c:if>
						</div>

						<div style="padding: 10px;">
							<input class="form-check-input" type="checkbox" name="remember-me"> 
			            	<label class="form-check-label">로그인 상태 유지</label>
						</div>

						<div>
						<button type="submit" class="login_button">로그인</button>
						</div>
					</form>
				</section>
				<div class="padding" >
					<a  class="spacing"> 비밀번호 찾기</a> 
					<a  class="spacing">아이디 찾기</a> 
					<a  class="spacing" href="/user/create">회원가입</a>
				</div>
			</div>	
		</div>
	</div>
	
	<br>
	<br>
	
	
	<footer class="footer col-sm-12">
		<p>© 2023 Mui Developer | Design By Mui</p>
	</footer>

	


</body>
</html>

