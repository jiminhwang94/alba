<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<% String se_id = request.getParameter("sn_id");  %>
	<%@ include file="../include/header.jsp" %>
	<title>Insert title here</title>
</head>
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
					
					if ( operation === 'list' )
					{
						//self.location="/board/list";
						//return;
						formObj.attr("action","/service/s_list").attr("method", "get");
						var pageNumTag = $("input[name='pageNum']").clone();
						var amountTag = $("input[name='amount']").clone();
						
						formObj.empty();
						formObj.append(pageNumTag);
						formObj.append(amountTag);
						//formObj.append("<input type='hidden' name='s_num' value ='"+ $(.sid).attr("href")+"'>");
						
					}
					
					formObj.submit();
				});
			
		});
	</script>
	<%@ include file="../include/mainmenu.jsp" %>
	<div class="container">
		<div class="col-md-7 col-lg-8">
			<h3 class="mb-3">온라인 답변</h3>
			<form class="needs-validation" role="form" action="/service/s_modify" method="post">
				<input type="hidden" name="pageNum" value="${page.pageNum }" >
				<input type="hidden" name="amount" value="${page.amount }" >
s				<div class="row g-3">
					<div class="col-12">
						<label for="s_num" class="form-label">번호</label> <input
							type="text" class="form-control" id="s_num" name="s_num" placeholder=""
							value="<c:out value="${service.s_num}" />" readonly="readonly">
					</div>
					<div class="col-md-3">
						<label for="s_type" class="form-label">문의 유형</label> 
						<c:set var="s_type" value="${service.s_type }" />
						<select class="form-select" id="s_type" name="s_type" >
							<option value="">유형을 골라주세요.</option>
							<option value="공고" <c:if test="${s_type.equals('공고')}"> <c:out value="selected" /> </c:if>>공고 문의</option>
							<option value="알바" <c:if test="${s_type.equals('알바')}"> <c:out value="selected" /> </c:if>>알바 문의</option>
							<option value="후기" <c:if test="${s_type.equals('후기')}"> <c:out value="selected" /> </c:if>>후기 문의</option>
							<option value="회원" <c:if test="${s_type.equals('회원')}"> <c:out value="selected" /> </c:if>>회원 문의</option>
						</select>
						<div class="invalid-feedback">Please select a valid country.
						</div>
					</div>
					<div class="col-12">
						<label for="s_title" class="form-label">제목</label> <input
							type="text" class="form-control" id="s_title" name="s_title" placeholder=""
							value="<c:out value="${service.s_title}" />" readonly="readonly">
						<div class="invalid-feedback">Valid first name is required.
						</div>
					</div>
					
					<div class="col-12">
						<label for="s_id" class="form-label">아이디</label>
						<div class="input-group has-validation">
							<span class="input-group-text">@</span> <input type="text"
								class="form-control" id="s_id" name="s_id" placeholder="아이디" value="<c:out value="${service.s_id}" />"
								readonly="readonly">
							<div class="invalid-feedback">Your userid is required.</div>
						</div>
					</div>
					
					<div class="col-12">
						<label for="s_name" class="form-label">이름</label>
						<div class="input-group has-validation">
							<span class="input-group-text">@</span> <input type="text"
								class="form-control" id="s_name" name="s_name" placeholder="이름" value="<c:out value="${service.s_name}" />"
								readonly="readonly">
							<div class="invalid-feedback">Your username is required.</div>
						</div>
					</div>
					
					<div class="col-12">
						<label for="s_content" class="form-label">문의 내용</label>
						<div class="input-group has-validation">
							<textarea rows="10" cols="50" class="form-control" name="s_content" name="s_content" placeholder="문의 내용을 입력하세요" readonly="readonly"><c:out value="${service.s_content}" /></textarea>
							<div class="invalid-feedback">Your content is required.</div>
						</div>
					</div>
					
					<div class="col-12">
						<label for="s_anwser" class="form-label">문의 답변</label>
						<div class="input-group has-validation">
							<textarea rows="10" cols="50" class="form-control" name="s_anwser" name="s_anwser" placeholder="문의 답변을 입력하세요" required><c:out value="${service.s_anwser}" /></textarea>
							<div class="invalid-feedback">Your content is required.</div>
						</div>
					</div>
				</div>
				
				<hr class="my-4">
			
				<button type="submit" data-oper='modify' class="btn btn-default">답변</button>
	            <button type="submit" data-oper='list' class="btn btn-info">목록</button>
			</form>
		</div>
	</div>
</body>
</html>