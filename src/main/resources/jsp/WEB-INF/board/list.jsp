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
<title>게시판.jsp</title>
<style>
.page {
	text-align: center;
}

.h1 {
	text-align: center;
}
</style>
</head>
<body>
 
	<!-- 	page table	 -->
 	<section class="container">
 		<table class="table table-light table-striped table-hover">
			<thead>
				<tr align="center">
					<th>번호</th>
					<th>아이디</th>
					<th>제목</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			
			<tbody>
			<c:forEach var="e" items="${list}">
				<tr>
					<td align="center"><a href="/board/detail?bno=${e.bno}">${e.bno}</a></td>
					<td align="center"><a href="/board/detail?bno=${e.bno}">${e.id}</a></td>
					<td align="center"><a href="/board/detail?bno=${e.bno}">${e.subject}</a></td>
					<td align="center"><a href="/board/detail?bno=${e.bno}">${e.created}</a></td>
					<td align="center"><a href="/board/detail?bno=${e.bno}">${e.hitcount}</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</section>
	
	<menu class="btn-group">
			<a href="/board/create" class="btn btn-primary">글쓰기</a>
	</menu>
	
</body>
</html>

