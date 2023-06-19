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
<title>detail.jsp</title>
</head>
<body>
	<a href="/">Home</a>
	<hr>

	<c:choose>
		<c:when test="${empty param.pageNum}">  
			<a href="/board/list">/board/list</a>

		</c:when>
		<c:when test="${not empty param.pageNum}">
			<a href="/board/page/${param.pageNum}/${param.pageSize}">
				/board/page/${param.pageNum}/${param.pageSize}</a>
		</c:when>
	</c:choose>
	<hr>

	<section class="container">
		<table class="table">
			<tbody>
				<tr>
					<th>bno</th>
					<td>${board.bno}</td>
				</tr>
				<tr>
					<th>id</th>
					<td>${board.id}</td>
				</tr>
				<tr>
					<th>pwd</th>
					<td>${board.pwd}</td>
				</tr>
				<tr>
					<th>email</th>
					<td>${board.email}</td>
				</tr>
				<tr>
					<th>subject</th>
					<td>${board.subject}</td>
				</tr>
				<tr>
					<th>content</th>
					<td>${board.content}</td>
				</tr>
				<tr>
					<th>created</th>
					<td>${board.created}</td>
				</tr>
				<tr>
					<th>hitcount</th>
					<td>${board.hitcount}</td>
				</tr>
				
			</tbody>
		</table>
		<hr>
		<menu class="btn-group">
			<a href="/board/update?id=${board.bno}" class="btn btn-secondary">수정</a>
			<a href="/board/delete?id=${board.bno}" class="btn btn-danger">삭제</a>
		</menu>
		<hr>
	</section>
	
	
</body>
</html>

