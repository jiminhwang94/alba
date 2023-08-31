<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<%@include file="../include/header.jsp"%>
<body>
	<script type="text/javascript">
		$(function() {
			const formObj = $("form");
			
			$('button').on("click",
				function(e)
				{
					e.preventDefault();
					
					const operation = $(this).data("oper");
					
					console.log(operation);
					
					if ( operation === 'remove')
					{
						formObj.attr("action", "/member/cremove");	
					}
					else if ( operation === 'list' )
					{
						//self.location="/board/list";
						//return;
						formObj.attr("action","/notice/mainhome").attr("method", "get");
						formObj.empty();
					}
					
					formObj.submit();
				});
			
		});
	</script>
	<%@include file="../include/mainmenu.jsp"%>
	<div class="container">
		<form method="post" action="/member/cmodify">
			<input type="hidden" name="c_id" value="${cmember.c_id}">
			<div class="container">
				<h1 class="sign__title">회원정보 수정</h1>

				<div class="sign-tab__content sign-tab__content-active user-info">

					<section class="sign-section">
						<div class="input-box-wrap">
							<div class="input-box id">
								<input type="text" id="userid" name="c_id" class="has-label"
									value='<c:out value="${member.c_id }" />' maxlength="15"
									readonly="readonly"> <label for="userid"
									class="fixed-label">아이디</label>
							</div>
						</div>
						<div class="valid-text">
							<p id="msg_userid" class="msg"></p>
						</div>
					</section>

					<section class="sign-section passwd">
						<ul class="input-box-wrap">
							<li class="input-box"><input type="password" id="passwd"
								name="c_password" class="has-label" value="" required
								autocomplete="new-password"> <label for="passwd">비밀번호
									<span>8~16자 영문,숫자,특수문자 조합</span>
							</label>
								<button type="button" id="changePasswdType"
									class="password-view-btn">표시</button></li>
							<li class="input-box"><input type="password" id="passwd2"
								name="c_password_con" class="has-label" value="" maxlength="16"
								required autocomplete="new-password"> <label
								for="passwd2">비밀번호 재입력</label></li>
						</ul>
						<div class="valid-text">
							<p id="msg_passwd" class="msg"></p>
							<p id="msg_passwd2" class="msg"></p>
						</div>
					</section>

					<section class="sign-section email">
						<ul class="input-box-wrap">
							<li class="input-box hide-last-child"><input type="text"
								id="email" class="has-label" name="c_email"
								value="<c:out value="${member.c_email }" />" maxlength="50"
								autocomplete="off"> <label class="fixed-label"
								for="birthdate">이메일</label></li>
						</ul>
						<!-- 이메일 자동완성 기능 -->
						<ul class="email-auto__list"></ul>
						<!-- //이메일 자동완성 기능 -->
						<div class="valid-text">
							<p id="msg_email" class="memo"></p>
						</div>
					</section>

					<section class="sign-section mobile">
						<ul class="input-box-wrap">
							<li class="input-box hide-last-child"><input type="tel"
								id="htel" class="has-label" name="c_phone"
								value="<c:out value="${member.c_phone }" />" maxlength="11">
								<label for="htel">휴대폰 (- 제외 번호 입력)</label></li>
						</ul>

						<div class="valid-text">
							<span id="msg_htel" class="msg"></span>
						</div>

					</section>

					<section class="sign-section name">
						<div class="input-box-wrap">
							<div class="input-box">
								<input type="text" id="usernm" name="c_registnum"
									class="has-label"
									value="<c:out value="${member.c_registnum }" />" maxlength="20">
								<label for="usernm">사업자 등록번호</label>
							</div>
						</div>
						<div class="valid-text">
							<p id="msg_usernm" class="msg"></p>
						</div>
					</section>

					<section class="sign-section name">
						<div class="input-box-wrap">
							<div class="input-box">
								<input type="text" id="usernm" name="c_company"
									class="has-label"
									value="<c:out value="${member.c_company }" />" maxlength="20">
								<label for="usernm">회사</label>
							</div>
						</div>
						<div class="valid-text">
							<p id="msg_usernm" class="msg"></p>
						</div>
					</section>

					<section class="sign-section name">
						<div class="input-box-wrap">
							<div class="input-box">
								<input type="text" id="usernm" name="c_president"
									class="has-label"
									value="<c:out value="${member.c_president }" />" maxlength="20">
								<label for="usernm">대표자명</label>
							</div>
						</div>
						<div class="valid-text">
							<p id="msg_usernm" class="msg"></p>
						</div>
					</section>

					<section class="sign-section">
						<ul class="input-box-wrap">
							<li class="input-box"><input type="text" id="addr1"
								name="c_address" class="has-label"
								value="<c:out value="${member.c_address }" />"
								readonly="readonly"> <label for="addr1" class="">주소</label></li>
						</ul>
						<div class="valid-text">
							<p id="msg_addr1" class="msg"></p>
						</div>
					</section>


					<section class="sign-section">
						<div class="check-group-wrap">
							<div class="check-group-wrap__tit">
								<label for="sectioncd_F" class="sign-option-label bold">맞춤정보</label>
							</div>
							<div class="check-group-wrap__cont">
								<ul class="check-group-wrap__list">
									<li><span class="input"> <input type="checkbox"
											id="sectioncd_F" name="sectioncd" value="F"> <label
											for="sectioncd_F">이력서 열람 알림</label>
									</span></li>
									<li><span class="input"> <input type="checkbox"
											id="sectioncd_H" name="sectioncd" value="H"> <label
											for="sectioncd_H">입사지원 요청 알림</label>
									</span></li>
								</ul>
							</div>
						</div>

						<script>
							$('#sectioncd_F').attr('checked', false);
							$('#sectioncd_H').attr('checked', false);
						</script>
					</section>


					<section class="sign-section">
						<div class="sign-section__title">
							<div class="tooltip">
								<span class="tooltip__title">개인정보 유효기간 선택</span>
								<div class="tooltip__button-wrap">
									<a href="javascript:void(0);" class="tooltip__button"
										onclick="$(this).parents('.tooltip').addClass('on');">도움말</a>

									<div class="tooltip-explain">
										<div class="tooltip-explain__contents">
											<p class="tooltip-explain__contents-title">개인정보 유효기간</p>
											선택하신 기간 동안 로그인하지 않을 경우 개인정보를 별도로 분리 저장하게 됩니다.
										</div>
										<button type="button"
											onclick="$(this).parents('.tooltip').removeClass('on');"
											class="tooltip-explain__close">닫기</button>
									</div>
								</div>
							</div>
						</div>
						<div class="sign-section__content">
							<div class="radio-group">
								<span class="input"> <input type="radio"
									id="expireduration_1" name="c_valid" value="1"> <label
									for="expireduration_1">1년</label>
								</span> <span class="input"> <input type="radio"
									id="expireduration_3" name="c_valid" value="3"> <label
									for="expireduration_3">3년</label>
								</span> <span class="input on"> <input type="radio"
									id="expireduration_99" name="c_valid" value="99" checked="">
									<label for="expireduration_99">회원탈퇴시</label> <span
									class="sign-expire__toast-arrow"></span>
								</span> <span id="SignExpireToast" class="sign-expire__toast">
									장기 비로그인 시에도 <strong>계정 활성 상태 유지</strong>
								</span>
							</div>
						</div>
					</section>
				</div>
				<button type="submit" data-oper='modify' class="btn btn-default">수정</button>
				<button type="submit" data-oper='remove' class="btn btn-danger">탈퇴</button>
				<button type="submit" data-oper='list' class="btn btn-info">메인</button>
			</div>
		</form>
	</div>
</body>
</html>