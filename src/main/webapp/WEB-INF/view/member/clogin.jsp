<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../include/header.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title> 
</head>
<body>
	<%@ include file="../include/mainmenu.jsp"%>
	<section id="Section">
		<div class="loginCombine">
			<div class="login-head">

				<h1 class="login-head__title">로그인 후 다양한 서비스를 이용해 보세요.</h1>
				<div class="login-head__guide">
					아직 알바천국 회원이 아니시면, 지금 <a
						href="https://sign.alba.co.kr/user/join/?site=WWW">회원가입</a>을 해주세요.
				</div>

			</div>

			<div class="login-wrap biz" >
				<form id="f" name="f" method="post" action="/member/clogin">
					<div class="login-area">
						<div class="login-tab">
							<button type="button" id="personBtn"
								class="login-tab__item login-tab__person" onclick="location.href='./plogin'">
								개인회원<span class="login-tab__subtxt">(일자리 찾기)</span>
							</button>
							<button type="button" id="bizBtn"
								class="login-tab__item login-tab__biz on" onclick="location.href='./clogin'">
								기업회원<span class="login-tab__subtxt">(알바생 찾기)</span>
							</button>
						</div>

						<fieldset class="login-field">
							<legend>로그인</legend>
							<div class="login-field__action">
								<input type="text" id="c_id" name="c_id" value=""
									title="아이디" placeholder="아이디" style="ime-mode: disabled"
									tabindex="1"> <input type="password" id="c_password"
									name="c_password" title="비밀번호" placeholder="비밀번호" tabindex="2">
								<button type="submit" id="btnLogin" tabindex="3"
									onclick="doLogin();return false;">로그인</button>
							</div>



							<div class="login-field__state">
								<span class="login-field__state-check"><input
									type="checkbox" id="keep" name="keep" value="Y"><label
									for="keep">로그인 상태 유지</label>
									<button type="button" class="login-field__state-help"
										>도움말</button></span>
								<span class="login-field__state-security">보안접속 <span
									class="login-field__state-on">ON</span>
									<button type="button" class="login-field__state-help"
										>도움말</button></span>

								<div id="LoginMaintain" class="loginMaintain layerHelp">
									개인정보보호를 위해<br> <strong>개인PC에서만 사용해주세요</strong> <a
										href="#LoginMaintainDetail" class="layerHelp__detail"
										>자세히
										보기</a> <a href="#LoginMaintain" class="layerHelp__close">닫기</a>
								</div>
								<div id="LoginMaintainDetail"
									class="loginMaintainDetail layerHelp">
									<dl class="layerHelp__guide">
										<dt>로그인 상태 유지 안내</dt>
										<dd>아이디와 비밀번호를 입력하지 않고, 편리하게 로그인 정보를 유지할 수 있는 기능 입니다.</dd>
										<dd>로그인 상태 유지를 선택하고, 로그인하시면, 브라우저의 쿠키를 삭제하거나, 직접 로그아웃을
											선택하기 전까지 로그인 상태가 유지됩니다.</dd>
										<dd>다만, 2주동안 해당 PC에서 알바천국을 방문하지 않는 경우, 자동으로 해제 됩니다.</dd>
									</dl>
									<ul class="layerHelp__caution">
										<li>개인정보 보호를 위해 <strong>여러 사람이 사용하는 공용PC에서는 사용에
												유의해주세요.</strong></li>
										<li>일부 브라우저에서 제공하는 ‘개인정보보호 브라우징(InPrivate 브라우징) 상태로 인터넷
											이용 시 쿠키가 저장되지 않아 로그인 상태 기능을 사용하실 수 없습니다.</li>
									</ul>
									<a href="#LoginMaintainDetail" class="layerHelp__close"
										onclick="jQuery('#LoginMaintainDetail').hide();return false;">닫기</a>
								</div>
								<div id="SecretHelp" class="secretHelp layerHelp">
									<dl class="layerHelp__guide">
										<dt>보안접속 안내</dt>
										<dd>로그인 시 회원님의 아이디 및 비밀번호를 암호화하여 회원님의 정보를 안전하게 보호해줍니다.</dd>
									</dl>
									<a href="#" class="layerHelp__close"
										onclick="jQuery('#SecretHelp').hide();return false;">닫기</a>
								</div>
							</div>
						</fieldset>

						<div class="login-link">
							<a href="#"><strong>회원가입</strong></a>
							<a href="#"
								onclick="MoveToFindId();return false;">아이디 찾기</a> <a
								href="#"
								onclick="MoveToFindPwd();return false;">비밀번호 찾기</a>
						</div>

					</div>
				</form>

				<div class="login-contents">
					<dl class="login-contents__list login-contents__list--P">
						<dt>개인회원 특별서비스</dt>
						<dd class="login-contents__list-person1">
							<span class="login-contents__list-icon"></span> <strong>원-클릭
								입사지원</strong> 알바천국 이력서만 있으면<br> 클릭 한 번에 입사지원 끝!
						</dd>
						<dd class="login-contents__list-person2">
							<span class="login-contents__list-icon"></span> <strong>SMART
								맞춤 채용정보</strong> 희망 근무조건을 입력하면<br> 매칭율 높은 공고를 알려드려요.
						</dd>
						<dd class="login-contents__list-person3">
							<span class="login-contents__list-icon"></span> <strong>알바상담센터</strong>
							임금체불, 근로계약, 부당대우 등<br> 각종 문제에 무료상담 지원해드려요.
						</dd>
					</dl>
					<dl class="login-contents__list login-contents__list--C">
						<dt>기업회원 특별서비스</dt>
						<dd class="login-contents__list-biz1">
							<span class="login-contents__list-icon"></span> <strong>쉽고
								빠른 공고등록</strong> Ai 추천기능으로 더 빨라진 공고등록!<br> 지원자도 한곳에서 쉽게 관리할 수 있어요.
						</dd>
						<dd class="login-contents__list-biz2">
							<span class="login-contents__list-icon"></span> <strong>무료공고
								&amp; 할인쿠폰 제공</strong> 알바천국 기업회원은 공고등록이 무료!<br> 할인쿠폰 등 다양한 혜택을 제공해
							드려요.
						</dd>
						<dd class="login-contents__list-biz3">
							<span class="login-contents__list-icon"></span> <strong>정액권
								· 이력서열람상품 구매 가능</strong> 최대 35% 할인된 정액권 상품과 인재에게<br> 바로 연락 가능한 이력서
							열람 상품도 있어요.
						</dd>
					</dl>
				</div>
			</div>
		</div>
	</section>
</body>
</html>