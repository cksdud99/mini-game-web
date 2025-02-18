<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js"
	integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
	crossorigin="anonymous"></script>
<style>
* {
	box-sizing: border-box;
	color: white;
	background-color: black;
}

.title {
	position: absolute;
	top: 57px;
	left: 521px;
	width: 397px;
	font-size: 64px;
	line-height: 84px;
	font-weight: 700;
}

/* Textbox 116 */
.name {
	position: absolute;
	top: 173px;
	left: 284px;
	opacity: 1;
}

.name input {
	width: 864px;
	height: 36px;
	padding-left: 12px;
	padding-right: 12px;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	background: #F3F4F6FF;
	border-radius: 6px;
	border-width: 0px;
	outline: none;
}

label {
	display: block;
}

/* Textbox 117 */
.id {
	position: absolute;
	top: 256px;
	left: 284px;
	opacity: 1;
}

.id input {
	width: 864px;
	height: 36px;
	padding-left: 12px;
	padding-right: 12px;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	background: #F3F4F6FF;
	border-radius: 6px;
	border-width: 0px;
	outline: none;
}

/* Textbox 118 */
.password {
	position: absolute;
	top: 339px;
	left: 284px;
	opacity: 1;
}

.password input {
	width: 759px;
	height: 36px;
	padding-left: 12px;
	padding-right: 12px;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	background: #F3F4F6FF;
	border-radius: 6px;
	border-width: 0px;
	outline: none;
}

/* Button 85 */
.modify_btn1 {
	position: absolute;
	top: 360px;
	left: 1070px;
	height: 36px;
	padding: 0 12px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-family: Inter;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	color: #FFFFFFFF;
	background: #636AE8FF;
	opacity: 1;
	border: none;
	border-radius: 6px;
	cursor: pointer;
}

/* Textbox 119 */
.nickname {
	position: absolute;
	top: 422px;
	left: 284px;
	opacity: 1;
}

.nickname input {
	width: 759px;
	height: 36px;
	padding-left: 12px;
	padding-right: 12px;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	background: #F3F4F6FF;
	border-radius: 6px;
	border-width: 0px;
	outline: none;
}

.modify_btn2 {
	position: absolute;
	top: 443px;
	left: 1070px;
	height: 36px;
	padding: 0 12px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	color: #FFFFFFFF;
	background: #636AE8FF;
	opacity: 1;
	border: none;
	border-radius: 6px;
	cursor: pointer;
}

/* Textbox 120 */
.phone {
	position: absolute;
	top: 505px;
	left: 284px;
	opacity: 1;
}

.phone input {
	width: 759px;
	height: 36px;
	padding-left: 12px;
	padding-right: 12px;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	background: #F3F4F6FF;
	border-radius: 6px;
	border-width: 0px;
	outline: none;
}

.modify_btn3 {
	position: absolute;
	top: 526px;
	left: 1070px;
	height: 36px;
	padding: 0 12px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	color: #FFFFFFFF;
	background: #636AE8FF;
	opacity: 1;
	border: none;
	border-radius: 6px;
	cursor: pointer;
}

/* Textbox 120 */
.email {
	position: absolute;
	top: 588px;
	left: 284px;
	opacity: 1;
}

.email input {
	width: 759px;
	height: 36px;
	padding-left: 12px;
	padding-right: 12px;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	background: #F3F4F6FF;
	border-radius: 6px;
	border-width: 0px;
	outline: none;
}

.modify_btn4 {
	position: absolute;
	top: 610px;
	left: 1070px;
	height: 36px;
	padding: 0 12px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	color: #FFFFFFFF;
	background: #636AE8FF;
	opacity: 1;
	border: none;
	border-radius: 6px;
	cursor: pointer;
}

/* Textbox 120 */
.birth {
	position: absolute;
	top: 671px;
	left: 284px;
	opacity: 1;
}

.birth input {
	width: 864px;
	height: 36px;
	padding-left: 12px;
	padding-right: 12px;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	background: #F3F4F6FF;
	border-radius: 6px;
	border-width: 0px;
	outline: none;
}

/* Textbox 120 */
.join_date {
	position: absolute;
	top: 754px;
	left: 284px;
	opacity: 1;
}

.join_date input {
	width: 864px;
	height: 36px;
	padding-left: 12px;
	padding-right: 12px;
	font-family: Inter;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	background: #F3F4F6FF;
	border-radius: 6px;
	border-width: 0px;
	outline: none;
}

/* Container 124 */
.complete_btn {
	position: absolute;
	top: 850px;
	left: 600px;
	height: 36px;
	padding: 0 12px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	color: #FFFFFFFF;
	background: #636AE8FF;
	opacity: 1;
	border: none;
	border-radius: 6px;
	cursor: pointer;
}

.cancel_btn {
	position: absolute;
	top: 850px;
	left: 750px;
	height: 36px;
	padding: 0 12px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	color: #FFFFFFFF;
	background: #636AE8FF;
	opacity: 1;
	border: none;
	border-radius: 6px;
	cursor: pointer;
}

.unregister_btn {
	position: absolute;
	top: 950px;
	left: 1070px;
	height: 36px;
	padding: 0 12px;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 14px;
	line-height: 22px;
	font-weight: 400;
	color: #FFFFFFFF;
	background: #636AE8FF;
	opacity: 1;
	border: none;
	border-radius: 6px;
	cursor: pointer;
}

.container {
	height: 1050px;
}

input{
	color:black;
}
</style>
</head>
<body>
	<div class="container">
		<div class="title">개인정보수정</div>
		<div class="name">
			<label class="label">이름</label> <input type="text" value="${dto.name }" readonly>
		</div>

		<div class="id">
			<label class="label">아이디</label> <input type="text" value="${dto.id }" readonly>
		</div>

		<div class="password">
			<label class="label">비밀번호</label> <input type="text" value="********" readonly>
		</div>
		<button class="modify_btn1">수정하기</button>

		<div class="nickname">
			<label class="label">닉네임</label> <input type="text" value="${dto.nickname }" readonly>
		</div>
		<button class="modify_btn2">수정하기</button>

		<div class="phone">
			<label class="label">전화번호</label> <input type="text" value="${dto.phone }" readonly>
		</div>
		<button class="modify_btn3">수정하기</button>

		<div class="email">
			<label class="label">이메일</label> <input type="text" value="${dto.email }" readonly>
		</div>
		<button class="modify_btn4">수정하기</button>

		<div class="birth">
			<label class="label">생년월일</label> <input type="text" value="${dto.rnum }" readonly>
		</div>

		<div class="join_date">
			<label class="label">가입일</label> <input type="text" value="${dto.joinDate }" readonly>
		</div>
		<button class="complete_btn">수정완료</button>
		<a href="/mypage.users">
		<button class="cancel_btn">이전으로</button>
		</a>
		<a href="/withdraw.users">
		<button class="unregister_btn">회원탈퇴</button>
		</a>
	</div>
</body>
</html>