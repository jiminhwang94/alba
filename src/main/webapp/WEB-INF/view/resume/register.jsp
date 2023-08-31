<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>이력서 작성</title>
	<link href="/resources/css/basic.css?after" rel="stylesheet">
	<link href="/resources/css/resumeRegister.css?after" rel="stylesheet">
	<%@include file="../include/header.jsp" %>
	<script type="text/javascript">
		function doSubmit() {
			if (confirm("이력서를 저장하시겠습니까?")) {
				document.resume.submit();
			} else {		
				document.resume.reset();
			}
		}
	</script>
</head>
<body>
<div class="header">
		<%@include file="../include/mainmenu.jsp" %>
</div>
<div class="main">
	<div class="content">
		<!-- pmember db에서 들고오기 -->
		
		<div id="RegistBaseInfo" class="registArea">
			<h2>기본정보<span class="necessary">*</span>
				<span class="comment">개인정보는 공개설정 여부와 관계없이 입사지원한 회사에 모두 공개됩니다.</span>
				<!-- 회원정보 수정 사이트 -->	
				<span class="update"><a href="#" >회원정보 수정</a></span>
			</h2>
		</div>
		<!-- border 설정 -->
		<form role="form" action="/resume/register" method="post" name="resume">
		<input type="hidden" name="r_id" value="${LoginVo.p_id }">
			<div>
				<div class="image">
					<img src="//image.alba.kr/person/profile_no_male.png"><br>
					<span class="photo"><a href="#">사진등록</a></span>
				</div>
				<!-- 사진있을때 -->
				<!-- <span class="picModify" style="disply: none;">사진수정</span> -->
			
				<div>
					<table summary="개인정보인 휴대폰,유선전화,안심번호,이메일,주소,홈페이지 항목의 표입니다.">
						<tbody>
							<tr>
								<td class="who" colspan="2">
									<span class="name">${LoginVo.p_name }</span>
									<span class="genderAge">
									남자 ·  <em class="num">23</em>세 (<em class="num">2000</em>년생) 						
									</span>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="blank"></td>
							</tr>
							<tr>
								<td>연락처</td>
								<td>
									<div class="contentsBox" style="display:">
										<span class="number">${LoginVo.p_phone }</span>
									</div>
								</td>
							</tr>
							<tr>
								<td class="item">이메일</td>
								<td class="userEmail">
									<div class="contentsBox">${LoginVo.p_email }</div>
								</td>
							</tr>
							<tr>
								<td class="item">주소</td>
								<td>
									<!-- 회원수정 페이지로 이동 -->
									<a href="#" id="idResumeAddr">주소입력</a>
								</td>
								<td class="adress">
									<input type="text" maxlength="200" placeholder="읍/면/동 또는 도로명까지 공개" value="${LoginVo.p_address }">
								</td>
							</tr>
							<tr>
								<td class="item">홈페이지</td>
								<td>
									<strong>http://</strong>
								</td>
								<td class="homepage">
									<input type="text" id="homepage" name="homepage" maxlength="100">
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			
			<!-- title 설정 -->
			<div id="RegistTitle" class="registArea">
				<h2>이력서 제목<span class="necessary">*</span></h2>
				<div class="registForm registForm--title">
					<input type="text" id="title" name="title" maxlength="25" placeholder="나를 포현할 한마디를 적어보세요 (최대 25자)">
				</div>
			</div>
			
			<!-- ability 설정 -->
			<div id="RegistEducation" class="registArea">
				<h2>학력<span class="necessary">*</span>
					<span class="comment">학력사항은 모든 이력서에 동일하게 적용되며, 선택한 학력이 최종학력으로 노출됩니다.</span>
				</h2>
				<div id="RegistEduResult" class="resultForm1">
					<div class="ability_title"><strong>최종학력</strong></div>
					<div class="select_title">
						<span class="selectBoxCustom">
							<select id="ability" name="ability">
								<option selected>선택</option>
								<option value="대학원">대학원</option>
								<option value="대학(4년)">대학(4년)</option>
								<option value="대학(2,3년)">대학(2,3년)</option>
								<option value="고등학교">고등학교</option>
								<option value="중학교">중학교</option>
								<option value="초등학교">초등학교</option>
							</select>
						</span>
					</div>
				</div>
			</div>
			
			<div id="RegistTitle02">
				<div id="registCareer" class="registArea">
					<div>
						<h2>경력<span class="necessary">*</span></h2>
					</div>
						<!-- border 설정 -->
					<div class="regist_inner" id="careerCategory">
						<div class="ability_title"><strong>경력구분</strong></div>
						<div class="select_title">
							<span class="selectBoxCustom">
								<select id="career" name="career">
									<option selected>선택</option>
									<option value="신입">신입</option>
									<option value="경력직">경력</option>
								</select>
							</span>
						</div>
					</div>
				</div>
			</div>
				
			
			<div id="RegistTerms" class="registArea">
				<h2>희망근무 조건<span class="necessary">*</span></h2>
				<div class="registForm">
					<div class="ability_title"><strong>희망근무지</strong></div>
					<div>
						<input type="text" name="hope" id="local" placeholder="지역이름을 적으시오.(서울,인천,부산)">
					</div><br>
												
					<div class="ability_title"><strong>희망업직종</strong></div>
					<div>
						<input type="text" name="job" id="job" placeholder="희망 직종을 적으시오(음식점, 백화점 등)">
					</div>
					<div>
						<div class="ability_title_job"><strong>근무형태</strong></div>
						<div class="typeList">
							<span class="input">
								<input type="checkbox" name="type" id="type" value="아르바이트"><label>아르바이트</label>
							</span>
							<span class="input">
								<input type="checkbox" name="type" id="type" value="계약직"><label>계약직</label>
							</span>
							<span class="input">
								<input type="checkbox" name="type" id="type" value="정규직"><label>정규직</label>
							</span>
							<span class="input">
								<input type="checkbox" name="type" id="type" value="인턴쉽"><label>인턴쉽</label>
							</span>
						</div>
						<div class="ability_title_job"><strong>근무기간</strong></div>
						<div class="typeList">
							<span class="input">
								<input type="radio" name="time" id="time" value="3개월 이하" checked><label>3개월 이하</label>
							</span>
							<span class="input">
								<input type="radio" name="time" id="time" value="3개월~6개월"><label>3개월~6개월</label>
							</span>
							<span class="input">
								<input type="radio" name="time" id="time" value="6개월~1년"><label>6개월~1년</label>
							</span>
							<span class="input">
								<input type="radio" name="time" id="time" value="1년이상"><label>1년이상</label>
							</span>
							<span class="input">
								<input type="radio" name="time" id="time" value="기간무관"><label>기간무관</label>
							</span>
						</div>
						<div class="ability_title_job"><strong>근무요일</strong></div>
						<div class="typeList">
							<span class="input">
								<input type="radio" name="day" id="day" value="평일" checked><label>평일</label>
							</span>
							<span class="input">
								<input type="radio" name="day" id="day" value="주말"><label>주말</label>
							</span>
							<span class="input">
								<input type="radio" name="day" id="day" value="요일무관"><label>요일무관</label>
							</span>
						</div>
					</div>
				</div>
			</div>
			<div id="registIntroduct" class="registArea">
				<h2>자기소개서<span class="necessary">*</span></h2>
				<div class="resizable-textarea">
					<span>
						<textarea id="resumeContents" name="introduce" cols="30" rows="10" placeholder="나의 강점과 특징에 대해 소개하고 어떤 사람인지 설명해 보세요." class="processed"></textarea>
					</span>
				</div>
			</div>
			<div>
				<div class="ability_title_publicc"><strong>공개/비공개</strong></div>
				<div class="typeList">
					<span class="input">
						<input type="radio" name="publicc" id="publicc" value="공개" checked><label>공개</label>
					</span>
					<span class="input">
						<input type="radio" name="publicc" id="publicc" value="비공개"><label>비공개</label>
					</span>
				</div>
			</div>
			<p class="complete">
				<!-- 이력서 view -->
				<a href="#"class="completement" onclick="doSubmit(); return false;">이력서 작성 완료</a>
				<!-- db에 저장하고 홈페이지로 가기 -->
			</p>
		</form>
	</div>
</div>
<div class="footer">
		<%@include file="../include/footer.jsp" %>
</div>
</body>
</html>