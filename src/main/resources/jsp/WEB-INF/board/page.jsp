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
 	
 	<h1 class="h1">
		Board Page
		<button type="button" class="btn btn-secondary btn-lg">${paging.pageNum}</button>
	</h1>
	<hr>
	<a href="/"><button type="button" class="btn btn-outline-primary">Home</button></a>
	<hr>
 
 	<!-- 	page table	 -->
	<div class="container mt-5">
		<table class="table table-primary table-striped table-hover page">
			<thead>
				<tr align="center">
					<th>번호</th>
					<th>아이디</th>
					<th>제목</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
	
			<tbody class="table-light">
				<c:forEach var="e" items="${list}">
					<tr>
						<td>${e.bno}</td>
						<td>${e.id}</td>
						<td>${e.subject}</td>
						<td>${e.created}</td>
						<td>${e.hitcount}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
 	
 	<!-- 	pagenation	 -->
	<ul class="pagination justify-content-center" style="margin: 20px 0">
		<li class="page-item disabled"><a class="page-link"
			href="/board/page/${paging.navigateFirstPage-1}/${paging.pageSize}">Previous</a></li>

		<c:forEach var="n" items="${paging.navigatepageNums}">
			<c:choose>
				<c:when test="${n eq paging.pageNum}">
					<li class="page-item active"><a
						href="/board/page/${n}/${paging.pageSize}"
						class="page-link">${n}</a></li>
				</c:when>
				<c:when test="${n ne paging.pageNum}">
					<li class="page-item       "><a
						href="/board/page/${n}/${paging.pageSize}"
						class="page-link">${n}</a></li>
				</c:when>
			</c:choose>
		</c:forEach>
		<li class="page-item"><a class="page-link"
			href="/board/page/${paging.navigateLastPage+1}/${paging.pageSize}">Next</a></li>
	</ul>
	</section>
	<hr>
		
	
	<!-- 버튼 -->
	
	<menu class="btn-group">
			<a href="/board/create" class="btn btn-primary">글쓰기</a>
	</menu>
	
</body>
</html>

