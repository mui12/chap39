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
<title>회원가입.jsp</title>
<style>
.option_point {
	color: green;
	font: bold;
}

.select_point {
	color: #929294;
	
}

.box {
	overflow: auto;
	box-sizing: border-box;
	max-height: 100px;
	border-radius: 10px;
	border: 1px solid #d6d6d6;
}


.article_title{
	
	
}

</style>
</head>
<body>

	<div class="checkbox_group">

	  <input type="checkbox" id="check_all" >
	  <em class="option_point">[필수]</em> <label for="check_all">전체 동의</label>
			<p>실명 인증된 아이디로 가입, 위치기반서비스 이용약관(선택), 이벤트・혜택 정보 수신(선택) 동의를 포함합니다.</p>
		<div class="box">
			<div class="article_title container-fluid">
			 	<h3>여러분을 환영합니다.</h3>
			 	<p>네이버 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 네이버 서비스의 이용과 관련하여 네이버 서비스를 제공하는 네이버 주식회사(이하 ‘네이버’)와
			 	 이를 이용하는 네이버 서비스 회원(이하 ‘회원’) 또는 비회원과의 관계를 설명하며, 아울러 여러분의 네이버 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고 있습니다.
				네이버 서비스를 이용하시거나 네이버 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영 정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.</p>
			</div>
		</div>
	  
	  <input type="checkbox" id="check_1" class="normal" >
	  <em class="option_point">[필수]</em> <label for="check_1">개인정보 수집 및 이용</label>
	  <div class="box">
	  	<div class="article_title container-fluid">
	  		<p>개인정보보호법에 따라 네이버에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 
	  		불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.</p>
	  	</div>
	  </div>
	  
	  
	  
	  <input type="checkbox" id="check_2" class="normal" >
	  <em class="select_point">[선택]</em> <label for="check_2">위치 기반 서비스 이용 약관</label>
	  <div class="box">
	  	<div class="article_title container-fluid">
	  		<p>위치기반서비스 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을 포함하는 네이버 위치기반 서비스를 이용할 수 있습니다.</p>
	  	</div>
	  </div>
	  
	  
	  <input type="checkbox" id="check_3" class="normal" >
	  <em class="select_point">[선택]</em> <label for="check_3">마케팅 수신 동의</label>
	  <div class="box">
	  	<div class="article_title container-fluid">
	  		<p>서비스 및 제휴 이벤트・혜택 등의 정보를 휴대전화(네이버앱 알림 또는 문자), 이메일로 받을 수 있습니다. 
	  		일부 서비스(별개의 회원 체계 운영, 네이버 가입 후 추가 가입하는 서비스 등)의 경우, 수신에 대해 별도로 안내드리며 동의를 구합니다.</p>
	  	</div>
	  </div>
	  
	  <button type="submit" class="btn btn-secondary">다음</button>
	  
	  
	  
	  
	</div>
	
	<script>
	
	// 체크박스 전체 선택
	$(".checkbox_group").on("click", "#check_all", function () {
	    $(this).parents(".checkbox_group").find('input').prop("checked", $(this).is(":checked"));
	});

	// 체크박스 개별 선택
	$(".checkbox_group").on("click", ".normal", function() {
	    var is_checked = true;

	    $(".checkbox_group .normal").each(function(){
	        is_checked = is_checked && $(this).is(":checked");
	    });

	    $("#check_all").prop("checked", is_checked);
	});
	</script>
		
	
	
	




</body>
</html>

