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

	<c:choose>
		<c:when test="${empty param.pageNum}">
			<a href="/board/list">/board/list</a>
		</c:when>	
		<c:when test="${not empty param.pageNum }">
			<a href="/board/page/${param.pageNum}/${param.pageSize}">
				/board/page/${param.pageNum}/${param.pageSize}
			</a>
		</c:when>
	</c:choose>
 
 
 
 	<!-- 	page table	 -->
 	<div class="container mt-5">
 		<table class="table table-light table-striped table-hover">
			<thead>
				<tr align="center">
					<th>번호</th>
					<th>아이디</th>
					<th>제목</th>
					<th>내용</th>
					<th>bfile</th>
					<th>reRef</th>
					<th>reLev</th>
					<th>reSeq</th>
					<th>조회수</th>
					<th>날짜</th>
				</tr>
			</thead>
			
			<tbody>
			<c:forEach var="e" items="${list}">
				<tr>
					<td align="center">${e.num}</td>
					<td align="center"><a href="#">${e.id}</a></td>
					<td>${e.subject}</td>
					<td>${e.content}</td>
					<td>${e.bfile}</td>
					<td>${e.reRef}</td>
					<td align="right">${e.reLev}</td>
					<td align="right">${e.reSeq}</td>
					<td align="center">${e.readcount}</td>
					<td align="center">${e.ddate}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
	
	
	<!-- 	pagenation	 -->
	<ul class="pagination justify-content-center" style="margin: 20px 0">
		<li class="page-item disabled"><a class="page-link"
			href="/board/list/${paging.navigateFirstPage-1}/${paging.pageSize}">Previous</a></li>

		<c:forEach var="n" items="${paging.navigatepageNums}">
			<c:choose>
				<c:when test="${n eq paging.pageNum}">
					<li class="page-item active"><a
						href="/board/list/${n}/${paging.pageSize}"
						class="page-link">${n}</a></li>
				</c:when>
				<c:when test="${n ne paging.pageNum}">
					<li class="page-item       "><a
						href="/board/list/${n}/${paging.pageSize}"
						class="page-link">${n}</a></li>
				</c:when>
			</c:choose>
		</c:forEach>
		<li class="page-item"><a class="page-link"
			href="/board/list/${paging.navigateLastPage+1}/${paging.pageSize}">Next</a></li>
	</ul>
	
	
	<!-- 글쓰기 -->
	<menu class="btn-group">
			<a href="/board/create" class="btn btn-primary">글쓰기</a>
	</menu>

</body>
</html>

