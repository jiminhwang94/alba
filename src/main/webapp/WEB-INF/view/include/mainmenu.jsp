<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<nav class="navbar navbar-expand-lg" aria-label="Eighth navbar example">
	<div class="container">
		<a class="navbar-brand" href="../notice/mainhome"> <img
			src="//image.alba.kr/e/common/2023/Header_bi.png" width="151"
			class="headerBi__logo" alt="알바, 천국 하나로 끝! 알바천국">
		</a>

		<div class="collapse navbar-collapse justify-content-md-center">
			<form role="search">
				<ul class="navbar-nav">
					<li class="nav-item"><input class="form-control"
						style="width: 400px;" type="search" placeholder="검색창"
						aria-label="Search"></li>
					<li class="nav-item"><button type="submit"
							class="btn btn-warning">🔍</button></li>
				</ul>
			</form>
		</div>
		<div>
			<ul class="navbar-nav mr-auto">
				<c:choose>
					<c:when test="${empty sessionScope.LoginVo}">
						<li class="nav-item"><a class="nav-link"
							href="../member/plogin">로그인</a></li>
						<li class="nav-item"><a class="nav-link"
							href='<c:url value="../member/membership"/>'>회원 가입</a></li>
					</c:when>
					<c:when test="${LoginVo.rating eq '개인' }">
						<li style="padding-top: 7px; color: black">${LoginVo.p_id}님</li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="../member/logout"/>">로그아웃</a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="../member/pget"/>">회원 정보</a></li>
					</c:when>
					<c:when test="${LoginVo.rating eq '기업' }">
						<li style="padding-top: 7px; color: black">${LoginVo.c_id}님</li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="../member/logout"/>">로그아웃</a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value="../member/cget"/>">회원 정보</a></li>
					</c:when>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>
<nav class="navbar navbar-expand-lg" aria-label="Eighth navbar example">
	<div class="container">
		<div class="navbar-hearer">
			<ul class="navbar-nav me-auto mb-2 mb-sm-0">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
					aria-expanded="false" onclick="men()">전체메뉴</a>
					<ul id="men" class="dropdown-menu" display="none">
						<li><a class="dropdown-item" href="#">Action</a></li>
						<li><a class="dropdown-item" href="#">Another action</a></li>
						<li><a class="dropdown-item" href="#">Something elsehere</a></li>
					</ul></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
					aria-expanded="false" onclick="rec()">채용정보</a>
					<ul id="rec" class="dropdown-menu" display="none">
						<li><a class="dropdown-item" href="#">Action</a></li>
						<li><a class="dropdown-item" href="#">Another action</a></li>
						<li><a class="dropdown-item" href="#">Something elsehere</a></li>
					</ul></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
					aria-expanded="false" onclick="per()">인재정보</a>
					<ul id="per" class="dropdown-menu" display="none">
						<li><a class="dropdown-item" href="#">Action</a></li>
						<li><a class="dropdown-item" href="#">Another action</a></li>
						<li><a class="dropdown-item" href="#">Something elsehere</a></li>
					</ul></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
					aria-expanded="false" onclick="vie()">알바후기</a>
					<ul id="vie" class="dropdown-menu" display="none">
						<li><a class="dropdown-item" href="../board/register">후기
								등록</a></li>
						<li><a class="dropdown-item" href="../board/list">후기 목록</a></li>
						<li><a class="dropdown-item" href="../board/">나의 후기</a></li>
					</ul></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown"
					aria-expanded="false" onclick="ser()">고객지원</a>
					<ul id="ser" class="dropdown-menu" display="none">
						<li><a class="dropdown-item" href="../service/s_register">1:1
								문의하기</a></li>
						<li><a class="dropdown-item" href="../service/s_list">내
								문의내역</a></li>
					</ul></li>

				<c:if test="${LoginVo.rating eq '개인' }">
					<c:set var="seid" value="${LoginVo.p_id}" />
				</c:if>
				<c:choose>
					<c:when test="${seid eq 'admin'}">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#"
							data-bs-toggle="dropdown" aria-expanded="false" onclick="adm()">회원
								관리메뉴</a>
							<ul id="adm" class="dropdown-menu" display="none">
								<li><a class="dropdown-item" href="../member/clist">기업
										회원 목록</a></li>
								<li><a class="dropdown-item" href="../member/plist">개인
										회원 목록</a></li>
							</ul></li>
					</c:when>
				</c:choose>

			</ul>
		</div>
		<div>
			<ul class="nav justify-content-end">
				<c:choose>
					<c:when test="${empty sessionScope.LoginVo}">
						<li><a class="btn btn-warning" style="width: 150px;"
							href="../resume/register">📃 이력서 등록</a></li>
						<li><a class="btn btn-primary" style="width: 150px;"
							href="../notice/n_register">📄 공고등록</a></li>
					</c:when>
					<c:when test="${LoginVo.rating eq '개인' }">
						<li><a class="btn btn-warning" style="width: 150px;"
							href="../resume/register">📃 이력서 등록</a></li>
					</c:when>
					<c:when test="${LoginVo.rating eq '기업' }">
						<li><a class="btn btn-primary" style="width: 150px;"
							href="../notice/n_register">📄 공고등록</a></li>
					</c:when>

				</c:choose>

			</ul>
		</div>
	</div>
</nav>
<nav class="navbar navbar-warning bg-warning"
	aria-label="First navbar example"></nav>
