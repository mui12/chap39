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
<title>create.jsp</title>

<style>

.back {
	background-image: url("/img/로그인.jpg");
	background-repeat: no-repeat;
	background-size: cover;
}


.body {
	margin: 50px 650px 50px 650px;

}

.user_img input{
	background-image: url("/img/user-regular.svg");
	background-position: 5px center;
	background-repeat: no-repeat;
	background-size: 2%;
	padding-left: 40px;
	box-sizing: border-box;

}

.lock_img input{
	background-image: url("/img/lock-solid.svg");
	background-position: 5px center;
	background-repeat: no-repeat;
	background-size: 2%;
	padding-left: 40px;
	box-sizing: border-box;

}


.calendar_img input{
	background-image: url("/img/calendar-days-regular.svg");
	background-position: 5px center;
	background-repeat: no-repeat;
	background-size: 2%;
	padding-left: 40px;
	box-sizing: border-box;

}


.phone_img input{
	background-image: url("/img/phone-solid.svg");
	background-position: 5px center;
	background-repeat: no-repeat;
	background-size: 2%;
	padding-left: 40px;
	box-sizing: border-box;

}

.email_img input{
	background-image: url("/img/envelope-regular.svg");
	background-position: 5px center;
	background-repeat: no-repeat;
	background-size: 2%;
	padding-left: 40px;
	box-sizing: border-box;
}

.form-group {
   display: flex;
   align-items: center;
}

.form-group input[type="text"] {
   margin-right: 10px;
}

.create_btn {
	padding-top: 30px;
}

.home_img img {
    border-radius: 200px;
    max-width: 40%;
    max-height: 40%;
	padding: 30px;
	display: block; 
    margin: 0 auto; 
}

.home_img {
	text-align: right;
}

.line {
	padding: 20px;
	border: 5px solid #F5F5F5;
	border-radius: 15px;
}

.font_requestinf {
	font-size: 13px;
	font-weight: bold;
	text-align: right;
	

}


.footer {
  height: 4rem;
  color: #ffffff;
  background-color: #A9A9A9;
  font-size: 15px;
  text-align: center;
  padding: 20px;
  position: relative;
  bottom: 0;
  left: 0;
  width: 100%;
  z-index: 9999;
}


</style>


</head>
<body class="back">
	
	
	<section class="container mt-4">
		<div class="row">
			<div class="col-sm-3"></div>
		<!-- 홈으로 가기 그림 -->
			<div class="col-sm-6">
				<div class="container">
					<a href="/" class="home_img"><img alt="나랏말싸미" src="/img/나랏말싸미.jpg"></a>
				</div>
				<form action="/user/create" method="post" class="line">
					<p class="font_requestinf"> * 는 필수 입력 정보입니다.</p>
					<div class="mb-3 user_img">
						<input class="form-control" id="id" name="id" placeholder="아이디 *"/>
					</div>
					<div class="mb-3 lock_img">
						<input class="form-control" id="password" name="password" placeholder="비밀번호 *"/>
					</div>
		
					<div class="mb-3 user_img">
						<input class="form-control" id="name" name="name" placeholder="이름 *"/>
					</div>	
					<div class="mb-3 calendar_img">
						<input class="form-control" id="dob" name="dob" placeholder="생년월일 8자리 *"/>
					</div>	
					<div class="mb-3 phone_img">
						<input class="form-control" type="tel" id="phone" name="phone" placeholder="전화번호 " maxlength="13"/>
					</div>	
					<div class="mb-3 email_img">
						<input class="form-control" type="email" id="email" name="email" placeholder="이메일"/>
					</div>	
				
					<!--  우편번호 -->
					<div>
						<label class="form-group">
							<input class="form-control" type="text" id="sample6_postcode" placeholder="우편번호">
							<input class="form-control" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
						</label>
						<input class="form-control" type="text" id="sample6_address" placeholder="주소">
						<input class="form-control" type="text" id="sample6_detailAddress" placeholder="상세주소">
					</div>
					
					<!-- 회원가입 -->
					<div class="create_btn">
						<button type="submit" class="btn btn-primary btn-lg container">회원가입</button>
					</div>
				</form>
			</div>
			<div class="col-sm-3"></div>
		</div>		
	</section>
	
	
	<!-- 주소  -->
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function sample6_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 조합된 참고항목을 해당 필드에 넣는다.
								document.getElementById("sample6_extraAddress").value = extraAddr;

							} else {
								document.getElementById("sample6_extraAddress").value = '';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample6_postcode').value = data.zonecode;
							document.getElementById("sample6_address").value = addr;
							// 커서를 상세주소 필드로 이동한다.
							document.getElementById("sample6_detailAddress")
									.focus();
						}
					}).open();
		}
		
	</script>

	<c:if test="${binding.hasErrors()}">
		<c:forEach var="g" items="${binding.globalErrors}">
			<div>${g.code} ${g.defaultMessage}</div>
		</c:forEach>
		<hr>
		<c:forEach var="f" items="${binding.fieldErrors}">
			<div>${f.field} ${f.defaultMessage}</div>
		</c:forEach>
	</c:if>
	
	
<!-- 	<script type="text/javascript"> -->
//     var result ='${msg}';
    
//     if(result == '성공'){
//         alert(result+'입니다.');
//     }else{
//         alert(result+'게시판등록 실패입니다.');
//     }
<!--     </script> -->
	
	
	
	
	
	<br>
	<br>
	<br>
	
	<footer class="footer col-sm-12">
		<p>© 2023 Mui Developer | Design By Mui</p>
	</footer>
	

</body>
</html>

