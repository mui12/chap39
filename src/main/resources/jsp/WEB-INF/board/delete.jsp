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
<title>update.jsp</title>
</head>
<body>
	<a href="/">Home</a>

	<a href="/board/list">/board/list</a>
	<hr>
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



</body>
</html>

