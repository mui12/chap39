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
<title>.게시판</title>
</head>
<body>

	<div id="bbsList">
		
		<div id="bbsList_title">
			게 시 판
		</div>
		<div id="bbsList_header">
			<div id="lieftHeader">
				<form action="" method="post">
					<select name="searchKey">
						<option value="subject">제목</option>
						<option value="name">작성자</option>
						<option value="content">내용</option>
					</select>				
					<input type="text" name="searchValue"/>				
					<input type="button" value="검색" onclick="sendIt();" />				
				</form>
			</div>
		</div>
	
		<div id="rightHeder">
			<a href="/board/create"><input type="button" value="글올리기"></a>
		</div>
	</div>
	<div id="bbsList_list">
		<div>
			<dl>
				<dt>번호</dt>			
				<dt>제목</dt>			
				<dt>작성자</dt>			
				<dt>작성일</dt>			
				<dt>조회수</dt>			
			</dl>
		</div>
	</div>



</body>
</html>

