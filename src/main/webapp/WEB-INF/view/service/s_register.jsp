<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../include/header.jsp" %>
<title>고객센터 등록페이지</title>
</head>
<body>
	<%@ include file="../include/mainmenu.jsp" %>
	<div class="container">
		<div class="col-md-7 col-lg-8">
			<h3 class="mb-3">온라인 문의</h3>
			<form class="needs-validation" role="form" action="/service/s_register" method="post">
				<div class="row g-3"> 
					<div class="col-md-3">
						<label for="s_type" class="form-label">문의 유형</label> 
						<select class="form-select" id="s_type" name="s_type" required>
							<option value="">유형을 골라주세요.</option>
							<option value="공고">공고 문의</option>
							<option value="알바">알바 문의</option>
							<option value="후기">후기 문의</option>
							<option value="회원">회원 문의</option>
						</select>
						<div class="invalid-feedback">유형을 골라주세요.
						</div>
					</div>
					<div class="col-12">
						<label for="s_title" class="form-label">제목</label> <input
							type="text" class="form-control" id="s_title" name="s_title" placeholder=""
							value="" required>
						<div class="invalid-feedback">제목을 적어주세요.
						</div>
					</div>
					
					<div class="col-12">
						<label for="s_id" class="form-label">아이디</label>
						<div class="input-group has-validation">
							<span class="input-group-text">@</span> <input type="text"
								class="form-control" id="s_id" name="s_id" placeholder="아이디"
								required>
							<div class="invalid-feedback">아이디를 적어주세요.</div>
						</div>
					</div>
					
					<div class="col-12">
						<label for="s_name" class="form-label">이름</label>
						<div class="input-group has-validation">
							<span class="input-group-text">@</span> <input type="text"
								class="form-control" id="s_name" name="s_name" placeholder="이름"
								required>
							<div class="invalid-feedback">이름을 적어주세요.</div>
						</div>
					</div>
					
					<div class="col-12">
						<label for="s_content" class="form-label">문의 내용</label>
						<div class="input-group has-validation">
							<textarea rows="10" cols="50" class="form-control" name="s_content" name="s_content" placeholder="문의 내용을 입력하세요" required></textarea>
							<div class="invalid-feedback">내용을 적어주세요.</div>
						</div>
					</div>

					<div class="col-12 d-flex">
						<div class="p-5 text-center border border-dark">
							개인정보 수집<br>및 이용동의 안내
						</div>
						<div class="p-2 bg-light border border-dark">
							<div class="">
								<span class="input"> <input type="checkbox" name="agree"
									id="agree" class="typeCheckbox" value="Y"> <label
									for="agree"><em class="text-danger">[필수]</em> 개인정보 수집 및 이용에 동의 합니다.</label>
								</span>
							</div>
							<div class="">
								<strong class="">개인정보 수집 및 이용동의 안내 <br></strong>
								<table cellspacing="0"
									summary="문의하실 문의유형, 제목, 문의내용, 작성자, 이메일, 휴대폰 번호 입력"
									class="agreement__table">
									<caption class="d-none">온라인 문의</caption>
									<tbody>
										<tr class="">
											<th class="text-left" scope="row">수집주체</th>
											<td class="text-right">(주)미디어윌네트웍스</td>
										</tr>
										<tr>
											<th class="text-left" scope="row">수집·이용 목적</th>
											<td class="text-right">온라인 문의 내용 처리</td>
										</tr>
										<tr>
											<th class="text-left" scope="row">수집·이용 항목</th>
											<td class="text-right">작성자, 이메일, 휴대폰번호</td>
										</tr>
										<tr>
											<th class="text-left" scope="row">보유기간</th>
											<td class="text-right"><strong class="text-primary">문의 완료 후 3년 후 파기</strong>(관련법령에 의거)</td>
										</tr>
									</tbody>
								</table>
								<br>
								<div class="">※ 위와 같이 개인정보의 수집 및 이용에 동의를 거부할 권리가 있으며, 동의를
									거부할 경우 온라인 문의 서비스 이용에 제한이 있습니다.</div>
							</div>
						</div>
					</div>
				</div>

				

				<hr class="my-4">
			
				<button class="w-100 btn btn-primary btn-lg" type="submit">문의 하기</button>
			</form>
		</div>
	</div>
	
</body>
</html>