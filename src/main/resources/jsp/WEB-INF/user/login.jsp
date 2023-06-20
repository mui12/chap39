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
<title>login.jsp</title>
<style>
* {
	margin: 0;
	padding: 0;
}

.home_img{

	width: 350px;
	height: 150px;
}

.line {
	border: 2px solid #F5F5F5;
	border-radius: 15px;
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
<body>
	
	<!-- 홈으로 가기 그림 -->
	<div class="container">
		<a href="/"><img alt="" src="/img/데니태극기.jpg" class="home_img"></a>
	</div>

	<div class="container mt-5 line">
		<div class="row">
			<div class="col-sm-12">
				
				<!--  로그인 바 -->
				<ul class="nav nav-tabs nav-justified">
					<li class="nav-item"><a class="nav-link login" href="#">ID
							로그인</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a></li>
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
							<input class="form-check-input" type="checkbox" name="remember-me"> 
			            	<label class="form-check-label">로그인 상태 유지</label>
						</div>
						<button type="submit" class="btn btn-primary">로그인</button>
					</form>
					<ul>
						<li><a>비밀번호 찾기</a></li>
						<li><a>아이디 찾기</a></li>
						<li><a href="/user/create">회원가입</a></li>
					</ul>
				</section>
			</div>	
		</div>
	</div>
	

	<!-- exception이 null이 아니면 (Boolean(X)) -->
	<c:if test="${exception ne null}">
		<div  class="alert alert-success">${exception.message}</div>
	</c:if>
	
	
	<footer class="footer">
		<span>
			<a>법적고지</a>
			<a>개인정보 처리방침</a>
			<a>contact us</a>
		</span>
		<p>|대표자: 심은미 |인천광역시 연수구 | 대표전화: 010-</p>
	</footer>



</body>
</html>

