<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>알바후기 등록</title>
	<link href="/resources/css/basic.css?after" rel="stylesheet">
	<link href="/resources/css/boardRegister.css?after" rel="stylesheet">
	<%@include file="../include/header.jsp" %>
</head>
<body>
	<div class="header">
		<%@include file="../include/mainmenu.jsp" %>
	</div>
	<div class="main">
		<div class="content">
			<div >
				<form role="form" action="/board/register" method="post" >
					<table class="content_register">
						<tr>
							<td>
								<input type="hidden" class="form-control" name='b_id' value="${LoginVo.p_id }">
							</td>
						</tr>
						<tr>
							<td>
								기업명 
							</td>
							<td>
								<input class="form-control" name='company'>
							</td>
						</tr>
						<tr>            					
							<td class="form-group">
								내용 
							</td>
							<td>
							<textarea class="form-control" rows="3" name='satis'></textarea>
							</td>
						</tr>
					</table>
					<div class="result_register">
						<button type="submit" class="submit">등록</button>
						<button type="reset" class="reset">리셋</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<div class="footer">
		<%@include file="../include/footer.jsp" %>
</div>
</body>
</html>