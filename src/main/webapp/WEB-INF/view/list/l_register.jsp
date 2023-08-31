<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="/resources/css/register.css" />
<script>
	function checkLogin() {
		if (session.getAttribute("user") == null) {
			alert("개인회원로그인을 하세요");
			location.href = "plogin.jsp";
		} else {
			alert("지원하였습니다.");
			location.href = "Lhome.jsp";
		}
	}
//지원,취소하면 각각 페이지 이동하는 건 구현했다.
</script>
</head>
<body onload="checkLogin()">
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/mainmenu.jsp"%>

	<form method="post" action="/Lhome.jsp" name="지원">
		<div class="container">
			<h1>지원서 등록</h1>
			<div class="form-group">
				<label>지원자</label><input type="text" class="form-control"
					name='title'>
			</div>

			<div class="form-group">
				<label>회사</label> <input type="text" class="form-control"
					name="company">
			</div>

			<button type="submit" class="btn btn-default">지원</button>
			<button type="button" onclick="location.href='home.jsp'">취소</button>

		</div>
	</form>
</body>
</html>
