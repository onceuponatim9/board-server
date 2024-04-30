<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/style/form.css">
<link rel="stylesheet" href="/resources/style/grid.css">
<title>Insert title here</title>
</head>
<jsp:include page="/header"></jsp:include>
<body>
<section>
<h1>NAVER</h1>
<form method="POST" action="/joinPro">
<div>
	<div id="id-box">
		<input type="text" id="id" name="id" placeholder="아이디"><span>@naver.com</span>
	</div>
	<input type="text" id="password" name="password" placeholder="비밀번호">
	<input type="email" id="email" name="email" placeholder="[선택] 이메일주소 (비밀번호 찾기 등 본인 확인용)">
</div>
<p id="error-msg-id">아이디: 필수 정보입니다.</p>
<p id="error-msg-password">비밀번호: 필수 정보입니다.</p>

<div>
<input type="text" id="name" name="name" placeholder="이름">
<input type="number" id="birth" name="birth" placeholder="생년월일 8자리">
<select id="telecom" name="telecom">
<option disabled selected>통신사 선택</option>
<option value="skt">SKT</option>
<option value="kt">KT</option>
<option value="lgt">LG U+</option>
<option value="skt-b">SKT 알뜰폰</option>
<option value="kt-b">KT 알뜰폰</option>
<option value="lgt-b">LG U+ 알뜰폰</option>
</select>

<div id="radio-container">
<div>
<input type="radio" id="male" name="gender" value="male">
<input type="radio" id="female" name="gender" value="female">
<label id="label-male" for="male"><span>남자</span></label>
<label id="label-female" for="female"><span>여자</span></label>
</div>
<div>
<input type="radio" id="non-foreigner" name="foreigner" value="false" checked>
<input type="radio" id="foreigner" name="foreigner" value="true">
<label id="label-nf" for="non-foreigner"><span>내국인</span></label>
<label id="label-f" for="foreigner"><span>외국인</span></label>
</div>
</div>
<input type="text" pattern="\d{3}-\d{4}-\d{4}|\d{11}" name="phone" placeholder="휴대전화번호">
</div>
<p id="error-msg-name">이름: 필수 정보입니다.</p>
<p id="error-msg-birth">생년월일: 필수 정보입니다.</p>
<p id="error-msg-telecom">통신사: 이용하는 통신사를 선택해 주세요.</p>
<p id="error-msg-gender">성별: 성별을 선택해 주세요.</p>
<p id="error-msg-phone">휴대전화번호: 필수 정보입니다.</p>

<div id="agreebox">
	<input type="checkbox" id="agree" name="agree" value="agree">
	<span>[필수]</span><span>인증 약관 전체동의</span>
</div>
<p id="error-msg-agree">필수 약관에 모두 동의해 주세요.</p>

<input type="submit" value="회원가입">
</form>
</section>
<script src="/resources/script/validation-join.js"></script>
<jsp:include page="/footer"></jsp:include>
</body>
</html>