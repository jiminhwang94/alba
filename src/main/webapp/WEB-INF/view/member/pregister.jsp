<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@include file="../include/header.jsp"%>
<head>
<body>
	<%@include file="../include/mainmenu.jsp"%>

	<form method="post" action="/member/pregister">
		<div class="container">
			<h1 class="sign__title">개인회원가입</h1>
			
			<section class="sign-section">
					<div class="agreement-wrap">
						<ul class="join__agreement-list">
							<li class="join__agreement-item join__agreement-item--all">
								<span class="input alone agreeCheck"> <input
									type="checkbox" id="allAgree" name="allAgree"> <label
									class="agree-label agree-label--all" for="allAgree">이용약관에
										전체동의</label>
							</span>
							</li>
							<li>
								<ul class="join__agreement-list-sub">
									<!-- 만 15세 이상 -->
									<li class="join__agreement-item"><span class="input">
											<input type="checkbox" id="chk0" name="chk0"> <label
											class="agree-label agreement-essential" for="chk0"><em
												class="agreement-emphasis">[필수]</em> 만 15세 이상입니다.</label>
									</span></li>
									<!-- //만 15세 이상 -->
									<!-- 이용약관 -->
									<li class="join__agreement-item">
										<div class="join__input-wrap">
											<span class="input alone agreeCheck"> <input
												type="checkbox" id="chk1" name="chk1"> <label
												class="invisible-label" for="chk1">동의</label>
											</span> <a class="agreement-btn" href="#AgreementContents">
												<em class="agreement-emphasis">[필수]</em> <span
												class="agreement-essential">서비스 이용약관 동의</span> <span
												class="sign-arrow sign-arrow--agreement"></span>
											</a>
										</div>
										<div
											class="agreement__content-wrap agreement__content-wrap--access">
											<iframe
												src="/policy/agreement_person_iframe.asp?202304241200"
												id="AgreementContents" frameborder="0" title="이용약관 상세내용"
												class="agreeContents"></iframe>
										</div>
									</li>
									<!-- //이용약관 -->
									<!-- 개인정보 수집 및 이용 동의[필수] -->
									<li class="join__agreement-item">
										<div class="join__input-wrap">
											<span class="input alone agreeCheck"> <input
												type="checkbox" id="chk2" name="chk2"> <label
												class="invisible-label" for="chk2">동의</label>
											</span> <a class="agreement-btn" href="#PrivacyContents">
												<em class="agreement-emphasis">[필수]</em> <span
												class="agreement-essential">개인정보 수집 및 이용 동의</span> <span
												class="sign-arrow sign-arrow--agreement"></span>
											</a>
										</div>
										<div
											class="agreement__content-wrap agreement__content-wrap--person">
											<iframe src="/policy/privacy_iframe.htm?202304241200"
												id="PrivacyContents" frameborder="0"
												title="개인정보 수집 및 이용 필수 내용" class="agreeContents"></iframe>
										</div>
									</li>
									<!-- //개인정보 수집 및 이용 동의[필수] -->
									<!-- 개인정보 수집 및 이용 동의[선택] -->
									<li class="join__agreement-item">
										<div class="join__input-wrap">
											<span class="input alone agreeCheck"> <input
												type="checkbox" id="chk3" name="chk3"> <label
												class="invisible-label" for="chk3">동의</label>
											</span> <a class="agreement-btn" href="#PrivacyContentsChoice">
												<em>[선택]</em> 개인정보 수집 및 이용 동의 <span
												class="sign-arrow sign-arrow--agreement"></span>
											</a>
										</div>
										<div
											class="agreement__content-wrap agreement__content-wrap--personchoice">
											<iframe src="/policy/privacy_iframe_choice.htm?202304241200"
												id="PrivacyContentsChoice" frameborder="0"
												title="개인정보 수집 및 이용 선택 내용" class="agreeContents"></iframe>
										</div>
									</li>
									<!-- //개인정보 수집 및 이용 동의[선택] -->
									<!-- 광고성 정보 수신 동의(SMS/MMS) -->
									<li class="join__agreement-item">
										<div class="join__input-wrap">
											<span class="input alone agreeCheck"> <input
												type="checkbox" id="sectionSms" name="sectionSms"> <label
												class="invisible-label" for="sectionSms">동의</label>
											</span> <a class="agreement-btn" href="#AdContentsSms">
												<em>[선택]</em> 광고성 정보 수신 동의(SMS/MMS) <span
												class="sign-arrow sign-arrow--agreement"></span>
											</a>
										</div>
										<div
											class="agreement__content-wrap agreement__content-wrap--ad-sms">
											<iframe src="/policy/ad_iframe.htm?202304241200"
												id="AdContentsSms" frameborder="0"
												title="광고성 정보 수신 상세내용 sms/mms" class="agreeContents"></iframe>
										</div> <span class="input hide"><input type="checkbox"
											id="sectioncd_E" name="sectioncd" value="E"><label
											for="sectioncd_E">SMS</label></span>
									</li>
									<!-- //광고성 정보 수신 동의(SMS/MMS) -->
									<!-- 광고성 정보 수신 동의(Email) -->
									<li class="join__agreement-item">
										<div class="join__input-wrap">
											<span class="input alone agreeCheck"> <input
												type="checkbox" id="sectionEmail" name="sectionEmail">
												<label class="invisible-label" for="sectionEmail">동의</label>
											</span> <a class="agreement-btn" href="#AdContentsEmail">
												<em>[선택]</em> 광고성 정보 수신 동의(이메일) <span
												class="sign-arrow sign-arrow--agreement"></span>
											</a>
										</div>
										<div
											class="agreement__content-wrap agreement__content-wrap--ad-email">
											<iframe src="/policy/ad_iframe_email.htm?202304241200"
												id="AdContentsEmail" frameborder="0"
												title="광고성 정보 수신 상세내용 email" class="agreeContents"></iframe>
										</div> 
									</li>
									<!-- //광고성 정보 수신 동의(Email) -->
								</ul>
							</li>
						</ul>
					</div>
					<p class="sign-section__notice refer-mark">개인정보 수집 및 이용에 대한 동의를
						거부할 권리가 있으며 동의 거부 시에는 회원가입이 불가합니다.</p>
				</section>
				
			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="userid" name="p_id" class="has-label"
							value="" maxlength="15" autocomplete="" required> <label
							for="userid">아이디 (4~15자 영문,숫자)</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_userid" class="msg"></p>
				</div>
			</section>

			<section class="sign-section passwd">
				<ul class="input-box-wrap">
					<li class="input-box"><input type="password" id="passwd"
						name="p_password" class="has-label" value=""
						autocomplete="new-password" required> <label for="passwd">비밀번호<span>8-15자의
								영문/숫자 또는 특수문자 조합</span></label>
						<button type="button" id="changePasswdType"
							class="password-view-btn">표시</button></li>
					<li class="input-box"><input type="password" id="passwd2"
						name="p_password_con" class="has-label" value="" maxlength="16"
						required> <label for="passwd2">비밀번호 재입력</label></li>
				</ul>
				<div class="valid-text">
					<p id="msg_passwd" class="msg"></p>
					<p id="msg_passwd2" class="msg"></p>
				</div>
			</section>

			<section class="sign-section name">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="usernm" class="has-label" name="p_name"
							maxlength="20" required> <label for="usernm">이름</label>
					</div>
				</div>
				<div class="valid-text">
					<p id="msg_usernm" class="msg"></p>
				</div>
			</section>

			<section class="sign-section">
				<div class="input-box-wrap">
					<div class="input-box">
						<input type="text" id="p_birthdate" class="has-label"
							name="birthdate" value="" maxlength="8" required> <label
							for="birthdate">생년월일 8자리 입력. 성별(선택)</label>
					</div>
				</div>
				<div class="select-gender gender">
					<span class="input">
						<input type="radio" id="male" name="p_sex" value="남자"> <label for="male">남</label>
					</span>
					<span class="input"> 
						<input type="radio" id="female" name="p_sex" value="여자"> <label for="female">여</label>
					</span>
				</div>
				<div class="sign-section__notice">
					<p id="msg_birth" class="msg choice show">생년월일을 입력해주시면 AI가 회원님께
						맞춤된 정보를 제공해드려요.</p>
					<p id="msg_gender" class="msg choice"></p>
				</div>
			</section>

			<section class="sign-section">
				<ul class="input-box-wrap">
					<li id="inputboxemail" class="input-box email hide-last-child">
						<input type="text" id="email" class="has-label" name="p_email"
						value="" maxlength="50" autocomplete="off" required> <label
						for="email">이메일</label>
					</li>
				</ul>
				<!-- 이메일 자동완성 기능 -->
				<ul class="email-auto__list"></ul>
				<!-- //이메일 자동완성 기능 -->
				<div class="valid-text">
					<p id="msg_email" class="msg"></p>
				</div>
			</section>

			<section class="sign-section">
				<ul class="input-box-wrap">
					<li class="input-box"><input type="text" id="htel"
						class="has-label" name="p_phone" value="" maxlength="11" required>
						<label for="htel">휴대폰 <span>('-' 없이 입력하세요.)</span></label></li>
				</ul>
				<div class="valid-text">
					<span id="msg_htel" class="msg"></span>
				</div>
			</section>

			<section class="sign-section">
				<ul class="input-box-wrap">
					<li class="input-box"><input type="text" id="adress"
						class="has-label" name="p_address" required> <label for="htel">주소</label>
					</li>
				</ul>
				<div class="valid-text">
					<span id="msg_address" class="msg"></span>
				</div>
			</section>

			<section class="sign-section">
				<ul class="input-box-wrap">
					<li class="input-box"><input type="text" id="path"
						class="has-label" name="p_path" required> <label for="htel">가입
							경로</label></li>
				</ul>
				<div class="valid-text">
					<span id="msg_path" class="msg"></span>
				</div>
			</section>

			<!-- 개인정보 유효기간 선택 -->
			<section class="sign-section">
				<div class="sign-section__title">
					<div class="tooltip">
						<span class="tooltip__title">개인정보 유효기간 선택</span>
						<div class="tooltip__button-wrap">
							<a href="javascript:void(0);" class="tooltip__button">도움말</a>
							<div class="tooltip-explain">
								<div class="tooltip-explain__contents">
									<p class="tooltip-explain__contents-title">개인정보 유효기간</p>
									선택하신 기간 동안 로그인하지 않을 경우 개인정보를 별도로 분리 저장하게 됩니다.
								</div>
								<button type="button" class="tooltip-explain__close">닫기</button>
							</div>
						</div>
					</div>
				</div>
				<div class="sign-section__content">
					<div class="radio-group">
						<span class="input"> <input type="radio"
							id="expireduration_1" name="p_valid" value="1"> <label
							for="expireduration_1">1년</label>
						</span> <span class="input"> <input type="radio"
							id="expireduration_3" name="p_valid" value="3"> <label
							for="expireduration_3">3년</label>
						</span> <span class="input"> <input type="radio"
							id="expireduration_99" name="p_valid" value="99" checked>
							<label for="expireduration_99">회원탈퇴시</label>
						</span> <span id="SignExpireToast" class="sign-expire__toast"> 장기
							비로그인 시에도 계정 활성 상태 유지 <a href="#SignExpireToast"
							class="sign-expire__toast-close">안내 닫기</a>
						</span>
					</div>
				</div>
			</section>
			<div class="btnAction">
				<button type="submit" class="btn btnType1 submit">가입하기</button>
			</div>
			<br>
			<br>
		</div>
	</form>
</html>