<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>이력서 작성</title>
	<link href="/resources/css/basic.css?after" rel="stylesheet">
	<link href="/resources/css/resumeRegister.css?after" rel="stylesheet">
	<link href="/resources/css/resumeModify.css?after" rel="stylesheet">
	<%@include file="../include/header.jsp" %>
	<script type="text/javascript">
		function doSubmit() {
			if (confirm("이력서를 수정하시겠습니까?")) {
				document.update.submit();
			} else {		
				document.update.reset();
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
		<form role="form" action="/resume/modify" method="post" name="update">
			<input type="hidden" name="r_id" value="${resume.r_id }">
			<!-- title 설정 -->
			<div id="RegistTitle" class="registArea">
				<h2>이력서 제목<span class="necessary">*</span></h2>
				<div>
					<input type="text" id="title" name="title" maxlength="25" placeholder="나를 포현할 한마디를 적어보세요 (최대 25자)" value="${resume.title }">
				</div>
			</div>
			
			<!-- ability 설정 -->
			<div id="RegistEducation" class="registArea">
				<h2>학력<span class="necessary">*</span>
					<span class="comment">학력사항은 모든 이력서에 동일하게 적용되며, 선택한 학력이 최종학력으로 노출됩니다.</span>
				</h2>
				<div id="RegistEduResult" class="resultForm">
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
					<div id="careerCategory">
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
						<input type="text" name="hope" id="hope" placeholder="지역이름을 적으시오.(서울,인천,부산)" value="<c:out value="${resume.hope }" />">
					</div><br>
												
					<div class="ability_title"><strong>희망업직종</strong></div>
					<div>
						<input type="text" name="job" id="job" placeholder="희망 직종을 적으시오(음식점, 백화점 등)" value="<c:out value="${resume.job }" />">
					</div>
				</div>
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
			</div>
			<div id="registIntroduct" class="registArea">
				<h2>자기소개서<span class="necessary">*</span></h2>
				<div>
					<span>
						<textarea id="introduce" name="introduce" cols="30" rows="10" placeholder="나의 강점과 특징에 대해 소개하고 어떤 사람인지 설명해 보세요." class="processed" >${resume.introduce }</textarea>
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
				<a href="#"class="completement" onclick="doSubmit(); return false;">이력서 수정</a>
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