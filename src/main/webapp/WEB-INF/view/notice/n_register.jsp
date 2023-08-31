<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../include/header.jsp"%>
<title>Insert title here</title>
<style type="text/css">
	.alarm-realtime__title {
		padding: 0 0 15px;
		font-weight: normal;
		font-size: 21px;
		border-bottom: 2px solid #62708c;
		background: none
	}
</style>
</head>
<body>
	<%@ include file="../include/mainmenu.jsp"%>
	<form method="post" action="/notice/n_register">
		<div class="container">
			<h1 class="sign__title">공고 등록하기</h1>
			
			<h2 class="alarm-realtime__title">모집 형태</h2>
			<br>
			<br>
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="title" name="title" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">공고 제목</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>
			
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="company" name="company" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">회사명</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>
			
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="area" name="area" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">회사 지역</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>
			
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="job" name="job" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">업무 내용</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>
			
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="many" name="many" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">모집 인원</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>
			
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="address" name="address" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">히사 주소</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>
			
			<h2 class="alarm-realtime__title">근무 조건</h2>
			<br>
			<br>
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="datee" name="datee" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">근무 기간</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>

			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="day" class="has-label" name="day"
							maxlength="20" required> <label for="usernm">근무 요일</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_usernm" class="msg"></p>
				</div>
			</section>

			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="time" name="time" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">근무 시간</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>
			
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="conn" name="conn" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">급여</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>
			
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="welfare" name="welfare" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">복지</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>
			
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="employment" name="employment" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">고용 형태</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>		
				
			<h2 class="alarm-realtime__title">자격 조건</h2>
			<br>
			<br>
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="age" name="age" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">연령</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>		
			
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="sex" name="sex" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">성별</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>		
			
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="ability" name="ability" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">학력</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>		
			
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="treatment" name="treatment" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">우대 사항</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>		
			
			<div class="btnAction">
				<button type="submit" class="btn btnType1 submit">가입하기</button>
			</div>
			<br> <br>
		</div>
	</form>
</body>
</html>