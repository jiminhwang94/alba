<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
 
<head>
<meta charset="UTF-8">
<title>이력서 작성</title>
	
	<link href="/resources/css/basic.css?after" rel="stylesheet">
	<link href="/resources/css/boardGet.css?after" rel="stylesheet">
	<link href="/resources/css/boardModify.css?after" rel="stylesheet">
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
		<form role="form" action="/board/modify?bno=${board.bno }" method="post" name="update">
			<!-- title 설정 -->
			<div id="modifyTitle" class="modifyArea">
				<h2>기업명</h2>
				<div>
					<input type="text" id="company" name="company" maxlength="25" value="${board.company }">
				</div>
			</div>
			
			<div id="modifyIntroduct" class="modifyArea">
				<h2>내용</h2>
				<div class="resizable-textarea">
					<span>
						<textarea id="satis" name="satis" cols="30" rows="10" class="board_satis" >${board.satis }</textarea>
					</span>
				</div>
			</div>
			<p class="complete">
				<!-- 이력서 view -->
				<a href="#"class="completement" onclick="doSubmit(); return false;">수정</a>
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