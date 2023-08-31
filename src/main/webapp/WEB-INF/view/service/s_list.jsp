<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../include/header.jsp" %>
<title>온라인 문의 내역</title>
</head>
<body>
	<%@ include file="../include/mainmenu.jsp" %>
	<script type="text/javascript"> 
		$(document).ready(function() {
			var actionForm = $("#actionForm");
			
			$(".page-item a").on("click", function(e) {
				e.preventDefault();
				console.log('click');
				actionForm.find("input[name='pageNum']").val($(this).attr("href"));
				actionForm.submit();
			});
			
			$('.move').on("click", function(e){
			    e.preventDefault();
			    actionForm.append("<input type='hidden' name='s_num' value ='"+ $(this).attr("href")+"'>");
			    actionForm.attr("action", "/service/s_get");
			    actionForm.submit();
			});
		});
		
		
	</script>
	<div class="container">
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th></th>
					<th>문의 유형</th>
					<th>아이디</th>
					<th>이름</th>
					<th>제목</th>
					<th>등록일</th>
					<th>답변여부</th>
				</tr>
				<c:forEach items="${s_list}" var="service">
					<tr>
						<td><c:out value="${service.s_num}"/></td>
						<td><c:out value="${service.s_type}" /></td>
						<td><c:out value="${service.s_id}" /></td>
						<td><c:out value="${service.s_name}" /></td>
						<td>
							<a class="move" href="<c:out value='${service.s_num}' />" ><c:out value="${service.s_title}" /></a>
						</td>
						<td><c:out value="${service.s_datee}" /></td>
						<c:set var="s_anwser" value="${service.s_anwser}" />
						<c:choose>
							<c:when test="${s_anwser.equals('-')}">
								<td>❌</td>
							</c:when>
							<c:otherwise>
								<td>⭕</td>
							</c:otherwise>
						</c:choose>
					</tr>
				</c:forEach>
			</table>
			<div class="pull-right">
				<ul class="pagination justify-content-center">
					<c:if test="${pageMaker.prev }">
						<li class="page-item previous"><a  class="page-link" href="${pageMaker.startPage-1}">Previous</a></li>
					</c:if>
					
					<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
						<li class="page-item"><a class="page-link" href="${num}">${num}</a></li>
					</c:forEach>
					<c:if test="${pageMaker.next}">
						<li class="page-item Next"><a class="page-link" href="${pageMaker.endPage +1}">Next</a></li>
					</c:if>
				</ul>
			</div>
			
		</div>
		<form id="actionForm" action="/service/s_list" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }" >
			<input type="hidden" name="amount" value="${pageMaker.cri.amount }" >
		</form>
	</div>
	
</body>
</html>