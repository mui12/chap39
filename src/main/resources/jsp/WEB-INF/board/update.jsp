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
<title>update.jsp</title>
</head>
<body>
<a href="/">Home</a>
	<hr>
	<a href="/board/list">/board/list</a>
	<hr>
	<section class="container">
		<form action="/board/update" method="post">
			<div class="mb-3">
				<label class="form-lable mb-2" for="bno">번호<span>*</span></label>			
				<input class="form-control"    id="bno"	    name="bno" value="${board.bno}" disabled="disabled"/>
				<input class="form-control"    id="bno"	    name="bno" value="${board.bno}" type="hidden"/>
			</div>
			<div class="mb-3">
				<label class="form-lable mb-2" for="id">id<span>*</span></label>			
				<input class="form-control"    id="id"	    name="id" value="${board.id}" disabled="disabled"/>
				<input class="form-control"    id="id"	    name="id" value="${board.id}" type="hidden"/>
			</div>
			<div class="mb-3">
				<label class="form-lable mb-2" for="email">이메일<span>*</span></label>			
				<input class="form-control"    id="email"	    name="email"	      placeholder="이메일을 입력하세요." value="${board.email}"/>
			</div>
			<div class="mb-3">
				<label class="form-lable mb-2" for="subject">제목<span>*</span></label>			
				<input class="form-control"    id="subject" name="subject" placeholder="제목을 입력하세요." value="${board.email}"/>
			</div>				
			<div class="mb-3">
				<label class="form-lable mb-2" for="content">내용</label>			
				<input class="form-control"    id="content"    name="content"    placeholder="내용을 입력하세요." value="${board.content}"/>
			</div>		
			<div class="mb-3">
				<label class="form-lable mb-2" for="created">작성일</label>			
				<input class="form-control"    id="created"  name="created"  placeholder="작성일을 입력하세요." value="${board.created}"/>
			</div>		
			<button type="submit" class="btn btn-primary">수정</button>
		</form>
	</section>
	<hr>

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



</body>
</html>

