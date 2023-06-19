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
<title>success.jsp</title>
</head>
<body>
	<h1>User Success 성공</h1>
	<hr>
	<a href="/">Home</a>
	<hr>
	<a href="/user/login">/user/login</a>
	<hr>
	
	<c:choose>
		<c:when test="${param.create ne null}"><h1>회원가입 성공</h1></c:when>
		<c:when test="${param.update ne null}"><h1>개인정보 수정 성공</h1></c:when>
		<c:when test="${param.delete ne null}"><h1>회원탈퇴 성공</h1></c:when>
		<c:otherwise></c:otherwise>
	</c:choose>
	<hr>

	<section class="container">
		<table class="table">
			<tbody>
				<tr><th>id</th><td>${user.id}</td></tr>
				<tr><th>password</th> <td>${user.password}</td></tr>
				<tr><th>name</th>   <td>${user.name}</td></tr>
				<tr><th>dob</th>   <td>${user.dob}</td></tr>
				<tr><th>phone</th>   <td>${user.phone}</td></tr>
				<tr><th>email</th>   <td>${user.email}</td></tr>
			</tbody>
		</table>
	</section>
	<hr>
	

</body>
</html>

