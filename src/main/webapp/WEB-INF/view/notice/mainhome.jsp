<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../include/header.jsp"%>
<link href="/resources/css/maingoods.css" rel="stylesheet">
<link href="/resources/css/main.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>	
	<script type="text/javascript">
		function confirmLogin(id) {
			
			if ( id == null){
				if (confirm("개인회원로그인을 하시겠습니까?")) {
			        location.href = "../member/plogin";
			        return false;
			    } else {
					location.href = "../notice/mainhome";
					return false;
				}
			}else{
				return true;
			}
			    
		}
	</script>
	<%@include file="../include/mainmenu.jsp"%>
	<div class="containr">
		<div class="mainTop2 float-end mr-auto pd-auto">

			<c:choose>
				<c:when test="${empty sessionScope.LoginVo}">
					<div id="Login" class="login-main">
						<ul class="login-main__action">
							<li class="login-main__action-P"><a href="../member/plogin">개인회원<br>
									로그인
							</a></li>
							<li class="login-main__action-C"><a href="../member/clogin">기업회원<br>
									로그인
							</a></li>
						</ul>
						<ul class="login-main__member">
							<li><a href="../member/membership">회원가입</a></li>
							<li><a class="idSearch" href="">아이디 찾기</a></li>
							<li><a class="pwSearch" href="">비밀번호 찾기</a></li>
						</ul>
					</div>
				</c:when>
				<c:when test="${LoginVo.rating eq '개인' }">
					<div id="LogoutP" class="logout-person">
						<ul class="logout-person__info">
							<li class="photo"><a href="" target="_parent"><img
									id="divProfile" src="//image.alba.kr/common/no_photo.png"
									alt=""
									onerror="this.src='//image.alba.kr/common/no_photo1.png'"><span>사진수정</span></a></li>
							<li class="member"><a class="memberName" href=""
								target="_parent"><strong>${LoginVo.p_name} 회원</strong></a> <a
								class="modify" href="../member/pget" target="_parent">정보보기</a></li>

							<li class="resumeCount">등록된 이력서가 없습니다.</li>
							<li class="resumeState resumeState--none">이력서 등록 시 <strong>81,830</strong>개
								공고 지원 가능
							</li>

						</ul>

						<ul class="logout-person__link">
							<li class="logout-person__link-resumemag"><a
								href="../resume/list" target="_parent"><span></span>이력서관리</a></li>
							<li class="logout-person__link-resumeread"><a
								href="../resume/get?r_id=${LoginVo.p_id }" target="_parent"><span></span>이력서열람</a></li>
							<li class="logout-person__link-application"><a
								href="../list/l_list?supporter=${LoginVo.p_id}" target="_parent"><span></span>입사지원현황</a></li>
						</ul>

						<p class="logout__close">
							<a href="../member/logout" target="_parent">로그아웃</a>
						</p>
					</div>
				</c:when>
				<c:when test="${LoginVo.rating eq '기업' }">
					<div id="LogoutC" class="logout-person">
						<ul class="logout-person__info">
							<li class="photo"><a href="" target="_parent"><img
									id="divProfile" src="//image.alba.kr/common/no_photo.png"
									alt=""
									onerror="this.src='//image.alba.kr/common/no_photo1.png'"><span>사진수정</span></a></li>
							<li class="member"><a class="memberName" href=""
								target="_parent"><strong>${LoginVo.c_president} 대표</strong></a>
								<a class="modify" href="../member/cget" target="_parent">정보보기</a></li>

						</ul>

						<ul class="logout-person__link">
							<li class="logout-person__link-resumemag"><a
								href="../notice/n_get?company=${LoginVo.c_company}" target="_parent"><span></span>공고관리</a></li>
							<li class="logout-person__link-resumeread"><a href=""
								target="_parent"><span></span>공고열람</a></li>
							<li class="logout-person__link-application"><a
								href="../list/l_list?company=${LoginVo.c_company}"
								target="_parent"><span></span>입사지원현황</a></li>
						</ul>

						<p class="logout__close">
							<a href="../member/logout" target="_parent">로그아웃</a>
						</p>
					</div>
				</c:when>
			</c:choose>
		</div>
		<div class="MainSuper" class="goodsLogo goodsMain">
			<ul class="goodsBox">
				<c:forEach items="${n_notice}" var="notice">
					<li class="first superTop uid_gsnws"><div class="B_MyAd_gsnws"></div>
						<a href="../notice/n_get?company=${notice.company}" class="goodsBox-info" onclick='return confirmLogin(${sessionScope.LoginVo})' > <span class="logo"> </span>
							<span class="company"><c:out value="${notice.company}" />
						</span> <span class="title "><span><c:out
										value="${notice.title}" /> <c:out value="${notice.job}" /></span></span> <span
							class="wrap"> <span class="time"><c:out
										value="${notice.time}" /></span>
						</span> <span class="wrap"> <span class="local"><c:out
										value="${notice.area}" /></span> <span class="pay"><span
									class="number"><c:out value="${notice.conn}" /></span>원</span>
						</span>
					</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>