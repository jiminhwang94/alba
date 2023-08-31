<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지원목록</title>
<%@include file="../include/header.jsp"%>
</head>
<body>

	<table>
		<caption>지원 목록</caption>
		<tr>
			<th>글번호</th>
			<th>이름</th>
			<th>이력서 제목</th>
			<th>경력,자격증</th>
			<th>희망지역</th>
			<th>수정일</th>
		</tr>
		<c:forEach var="list" items="${l_list}">
			<p>
				company =
				<c:out value="${list.company}" />
			<p>
				<a href="./l_get?supporter=<c:out value="${list.supporter }"/>">
					<c:out value="${list.supporter}" />
				</a> 
		</c:forEach>
	</table>
	<div class="pageNum_list">
		<c:if test="${cri.pageNum != 1}">
			<a href="?pageNum=${cri.pageNum - 1} " class="pageNum"></a>
		</c:if>
		<a href="?pageNum=1" class="pageNum">1</a> <a href="?pageNum=2"
			class="pageNum">2</a> <a href="?pageNum=3" class="pageNum">3</a> <a
			href="?pageNum=4" class="pageNum">4</a> <a href="?pageNum=5"
			class="pageNum">5</a> <a href="?pageNum=6" class="pageNum">6</a> <a
			href="?pageNum=7" class="pageNum">7</a> <a href="?pageNum=8"
			class="pageNum">8</a> <a href="?pageNum=9" class="pageNum">9</a> <a
			href="?pageNum=10" class="pageNum">10</a>
		<c:if test="${cri.pageNum != 10 }">
			<a href="?pageNum=${cri.pageNum + 1} " class="pageNum">></a>
		</c:if>
	</div>
</body>
</html>