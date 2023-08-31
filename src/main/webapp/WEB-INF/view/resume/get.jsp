<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>이력서</title>
	<link href="/resources/css/basic.css?after" rel="stylesheet">
	<link href="/resources/css/resumeGet.css?after" rel="stylesheet">
	<%@include file="../include/header.jsp" %>
	
</head>
<body>
	<div class="header">
		<%@include file="../include/mainmenu.jsp" %>
	</div>
	<div class="main">
		<div class="content">
			<div class="pmember">
				<div class="image">
					<img src="//image.alba.kr/person/profile_no_male.png"><br>
				</div>
				<table summary="개인정보인 휴대폰,유선전화,안심번호,이메일,주소,홈페이지 항목의 표입니다.">
					<tbody>
						<tr>
							<td class="who" colspan="2">
								<span class="pName">홍길동 -</span>
								<span class="genderAge">
									남자 ·  <em class="num">23</em>세 (<em class="num">2000</em>년생) 						
								</span>
							</td>
						</tr>
						<tr>
							<td colspan="2" class="blank"></td>
						</tr>
						<tr>
							<td class="pNumber">연락처:</td>
							<td class="hpNumber">
								<div class="contentsBox" style="display:">
									<span class="number">010-2723-4986</span>
								</div>
							</td>
						</tr>
						<tr>
							<td class="pEmail">이메일:</td>
							<!-- 이메일 데이터 입력 -->
							<td class="userEmail">
								<div class="contentsBox">gildong@naver.com</div>
							</td>
						</tr>
						<tr>
							<td class="pAddress">주소:</td>
							<!-- 주소 데이터 입력 -->
							<td class="adress">
								부산
							</td>
						</tr>
						<tr>
							<td class="pHomepage">홈페이지:</td>
							<td class="homepage">
							<!-- 홈페이지 데이터 입력 -->
								<strong>http://naver.com</strong>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<!-- border 설정 -->
			<div id="RegistTitle" class="registArea">
				<h2 class="title">제목</h2> <span><c:out value="${resume.title }" /></span>
			</div>
				
			<!-- border 설정 -->
			<div id="RegistEducation" class="registArea">
				<h2>학력</h2>
				<div id="RegistEduResult" class="resultForm">
					<div class="select_title">
						<span class="selectBoxCustom">
							<c:out value="${resume.ability }" />
						</span>
					</div>
				</div>
			</div>
		
			<div>
				<div id="registCareer" class="registArea">
					<div>
						<h2>경력</h2>
					</div>
						<!-- border 설정 -->
					<div class="regist_inner" id="careerCategory">
						<div class="select_title">
							<span class="selectBoxCustom">
								<c:out value="${resume.career }" />
							</span>
						</div>
					</div>
				</div>
			</div>
			<div id="registHope" class="registArea">
				<h2>희망 근무조건</h2>
				<div>
					<c:out value="${resume.hope }" />
				</div>
			</div>
			<div id="registJob" class="registArea">							
				<h2>희망 업직종</h2>
				<div>
					<c:out value="${resume.job }" />
				</div>
			</div>
			<div id="registType" class="registArea">
				<h2>근무형태</h2>
				<div>
					<c:out value="${resume.type }" />
				</div>
			</div>
			<div id="registIntroduce" class="registArea">
				<h2>자기소개서</h2>
				<div>
					<c:out value="${resume.introduce }" />
				</div>
			</div>
			<div id="registPublicc" class="registArea">
				<h2>공개/비공개</h2>
				<div>
					<c:out value="${resume.publicc }" />
				</div>
			</div>
			<div class="complete">
				<!-- 이력서 view -->
				<form id='action' action="/resume/remove" method="post">
					<a href="/resume/modify?r_id=<c:out value="${resume.r_id }" />" class="update">수정</a>
           				<input type='hidden' id='r_id' name='r_id' value='<c:out value="${resume.r_id }" />'>
						<button type="submit" class="delete" >삭제</button>
       			</form>
       		</div>
		</div>
	</div>
	<div class="footer">
		<%@include file="../include/footer.jsp" %>
	</div>
</body>
</html>