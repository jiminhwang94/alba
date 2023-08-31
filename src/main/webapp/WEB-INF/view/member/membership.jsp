<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../include/header.jsp" %>
<%@include file="../include/mainmenu.jsp" %>
<link rel = "stylesheet" href="/resources/css/sign.css" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<section id="Section" class="oldApp">
		<h1 class="sign__title">알바천국 회원가입을 환영합니다.</h1>
	
	<article id="Contents" class="join">
		<div class="container">
			<div class="join-type person">
				<div class="join-guide">
					<a href="./pregister" class="join-guide__link">
						<p class="join-guide__title join-guide__title--person">개인 회원</p>
						<span class="join-guide__text">알바, 천국에 다 있어요.</span>
					</a>
				</div>
				<div class="btnAction">
					<a class="join-btn__action join-btn__action--person id" href="./pregister" >개인회원 가입하기</a>
				</div>
			</div>
		<div class="join-type biz">
			<div class="join-guide">
				<a href="./cregister" class="join-guide__link">
					<p class="join-guide__title join-guide__title--biz">기업 회원</p>
					<span class="join-guide__text">알바생, 천국에 다있어요.<br>(사업자등록번호 필수입력)</span>
				</a>
			</div>
			<div class="btnAction">
				<a class="join-btn__action join-btn__action--biz" href="./cregister">기업회원 가입하기</a>
			</div>
			</div>
			
			<div class="proxy">
				<a href="http://www.alba.co.kr/agency/main.asp" target="_blank" class="proxy__button">빠르고 간편한 공고등록대행 <span class="proxy__button--link">1661-2544</span></a>
			</div>
			
		</div>
		
	</article>
</section>
</form>                         
</body>
</html>