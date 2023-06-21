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
<title>page.jsp</title>
<style>

.spacing{
	text-decoration: none;
}

</style>
</head>
<body>
	<h1 class="h1">
		City Page
		<button type="button" class="btn btn-secondary btn-lg">${paging.pageNum}</button>
	</h1>
	<hr>
	<a href="/"><button type="button" class="btn btn-outline-primary">Home</button></a>
	<hr>
	
	<menu class="btn-group">
			<a href="/city/create" class="btn btn-primary">추가</a>
	</menu>	


	<!-- 	page table	 -->
	<div class="container mt-5">
		<table class="table table-primary table-striped table-hover page">
			<thead>
				<tr>
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
						<td><a class="spacing" href="/city/detail/${e.id}">${e.id}</a></td>
						<td><a class="spacing" href="/city/detail/${e.id}">${e.name}</a></td>
						<td><a class="spacing" href="/city/detail/${e.id}">${e.countryCode}</a></td>
						<td><a class="spacing" href="/city/detail/${e.id}">${e.district}</a></td>
						<td align="right"><fmt:formatNumber pattern="###,###,###,###"
								value="${e.population}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<!-- 	pagenation	 -->
	<ul class="pagination justify-content-center" style="margin: 20px 0">
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
	<hr>
	

</body>
</html>

