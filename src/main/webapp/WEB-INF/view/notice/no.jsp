<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<script>
	function checkLogin() {
		if (session.getAttribute("user") == null) {
			alert("기업회원로그인을 하세요");
			location.href = "clogin.jsp";
		} else {
			alert("공고등록을 성공하였습니다.");
			location.href = "Nhome.jsp";
		}
	}
</script>
</head>
<body onload="checkLogin()">
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/mainmenu.jsp"%>

	<form method="post" action="/Nhome.jsp" name="공고등록 성공">
		<div class="container">
			<h1>공고등록</h1>
			<div class="form-group">
				<label>공고제목</label> <input type="text" class="form-control"
					name='title'>
			</div>

			<div class="form-group">
				<label>회사</label> <input type="text" class="form-control"
					name="company">
			</div>

			<div class="form-group">
				<label>근무기간</label> 
				<span>
					<input type="checkbox" name="datee" value="하루">1일<br>
					<input type="checkbox" name="datee" value="1주">1주일이내<br>
					<input type="checkbox" name="datee" value="1개월">1주일~1개월<br>
					<input type="checkbox" name="datee" value="3개월">1개월~3개월<br>
					<input type="checkbox" name="datee" value="6개월">3개월~6개월<br>
					<input type="checkbox" name="datee" value="9개월">6개월~9개월<br>
					<input type="checkbox" id="one-year" name="datee" value="1년">9개월~1년<br>
					<input type="checkbox" id="two-year" name="datee" value="2년">1년
					이상<br>
				</span>
			</div>

			<div class="form-group">
				<label>근무요일</label> <input type="checkbox" id="weekday" name="day"
					value="평일">월화수목금<br> <input type="checkbox" name="day"
					value="월">월요일<br> <input type="checkbox" name="day"
					value="화">화요일<br> <input type="checkbox" name="day"
					value="수">수요일<br> <input type="checkbox" name="day"
					value="목">목요일<br> <input type="checkbox" name="day"
					value="금">금요일<br> <input type="checkbox" id="weekend"
					name="day" value="주말">토일<br> <input type="checkbox"
					name="day" value="토">토요일<br> <input type="checkbox"
					name="day" value="일">일요일<br>
			</div>
			<!-- 평일 체크박스를 찾아서 클릭 이벤트를 등록합니다. -->
			<script>
				var oneYear = document.getElementById("one-year");
				oneYear.addEventListener("click", function() {
					// "평일" 체크박스가 체크되었는지 확인합니다.
					if (weekday.checked) {
						// 모든 체크박스를 찾아서 반복문으로 돌립니다.
						var checkboxes = document.getElementsByName("day");
						for (var i = 0; i < checkboxes.length; i++) {
							// 주말, 토일 체크박스를 제외하고 모두 체크합니다.
							if (checkboxes[i].id !== "weekend"
									&& checkboxes[i].id !== "weekday") {
								checkboxes[i].checked = true;
							}
						}
					}
				});
			</script>
			<div class="form-group">
				<label>지역</label> <select name="area">
					<option value="서울경기">서울특별시,경기도</option>
					<option value="대전충청">대전광역시,충청도</option>
					<option value="대구경북">대구광역시,경북</option>
					<option value="부산경남">부산광역시,경남</option>
					<option value="울산">울산광역시</option>
					<option value="광주전라">광주광역시,전라도</option>
					<option value="인천">인천광역시</option>
					<option value="세종">세종특별시</option>
					<option value="동해">동해시,강원도</option>
				</select>
			</div>

			<div class="form-group">
				<label>직업</label> <input type="text" class="form-control" name='job'>
			</div>

			<div class="form-group">
				<label>나이</label> <select name="age">
					<option value="20세">20~25세</option>
					<option value="25">30~35세</option>
					<option value="30">35~40세</option>
					<option value="40">40~45세</option>
					<option value="45">45~50세</option>
					<option value="50">50~55세</option>
					<option value="55">55~60세</option>
					<option value="60">65세이하</option>
				</select>
			</div>

			<div class="form-group">
				<label>월급</label> <select name="conn">
					<option value="시급">시급</option>
					<option value="일급">일급</option>
					<option value="주급">주급</option>
					<option value="월급">월급</option>
					<option value="연봉">연봉</option>
					<option value="상의">상의</option>
				</select> <input type="text" name="selectedValue" />
			</div>

			<div class="form-group">
				<label>근무시간</label> <select name="time">
					<option value="오전">오전</option>
					<option value="오전오후">오전~오후</option>
					<option value="하루">종일</option>
					<option value="오후">오후</option>
					<option value="오후저녁">오후~저녁</option>
					<option value="시간">시간협의</option>
					<option value="저녁">저녁</option>
					<option value="저녁새벽">저녁~새벽</option>
					<option value="새벽">새벽</option>
					<option value="새벽오전">새벽~오전</option>

				</select>
			</div>
			<div class="form-group">
				<label>성별</label> <input type="radio" id="male" name="gender"
					value="male"> <label for="male">남성</label><br> <input
					type="radio" id="female" name="gender" value="female"> <label
					for="female">여성</label><br> <input type="checkbox"
					id="noPreference" name="gender" value="무관"> <label
					for="noPreference">무관 포함</label><br> <br>
			</div>

			<div class="form-group">
				<label>모집인원</label> <select name="many">
					<option value="100">100명 미만</option>
					<option value="10">10명 미만</option>
					<option value="5">5명 이하</option>
					<option value="3">3명 이하</option>
					<option value="1">1명</option>
				</select>
			</div>

			<div class="form-group">
				<label>학력</label> <select name="ability">
					<option value="중">중졸</option>
					<option value="고">고졸</option>
					<option value="대2">대졸(2,3년제)</option>
					<option value="대4">대졸(4년)</option>
					<option value="석">석사</option>
					<option value="박">박사</option>
				</select>
			</div>

			<div class="form-group">
				<label>우대사항</label> <input type="checkbox" name="treatment"
					value="경력">동종업계 경력자<br> <input type="checkbox"
					name="treatment" value="자격증">관련 자격증 소지자<br> <input
					type="checkbox" name="treatment" value="장기">장기 근무 가능자<br>
				<input type="checkbox" name="treatment" value="컴퓨터">컴퓨터 활용
				가능자<br> <input type="checkbox" name="treatment" value="인근">인근
				거주자<br> <input type="checkbox" name="treatment" value="언어">외국어
				가능자<br>
			</div>

			<div class="form-group">
				<label>고용형태</label> <select name="employment">
					<option value="alba">아르바이트</option>
					<option value="regular">정규직</option>
					<option value="Contract">계약직</option>
					<option value="dispatch">파견직</option>
					<option value="internship">인턴직</option>
					<option value="commissioned">위촉직</option>
					<option value="trainees/research students">교육생/연구생</option>
				</select>
			</div>

			<div class="form-group">
				<label>복지</label> <select name="welfare">
					<option value="traffic">교통비지원</option>
					<option value="year">연차</option>
					<option value="Reward ">포상휴가</option>
					<option value="month">월차</option>
					<option value="regul">정기휴가</option>
					<option value="Dormitory">기숙사</option>
					<option value="severance ">퇴직금</option>
				</select>
			</div>

			<div class="form-group">
				<label>주소</label> <input type="text" class="form-control"
					name='address'>
			</div>

			<button type="submit" class="btn btn-default">등록</button>
			<button type="button" onclick="location.href='home.jsp'">취소</button>
			<div class="input-group mb-3">
				<div class="input-group-text">
					<input class="form-check-input mt-0" type="checkbox" value=""
						aria-label="Checkbox for following text input"> 
					<input	class="form-check-input mt-0" type="checkbox" value=""
						aria-label="Checkbox for following text input"> 
					<input	class="form-check-input mt-0" type="checkbox" value=""
						aria-label="Checkbox for following text input"> 
					<input	class="form-check-input mt-0" type="checkbox" value=""
						aria-label="Checkbox for following text input">
				</div>
				<input type="text" class="form-control"
					aria-label="Text input with checkbox">
			</div>
		</div>
	</form>
</body>
</html>
