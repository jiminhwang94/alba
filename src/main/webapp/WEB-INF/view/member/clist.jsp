<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
	<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<caption>기업 회원목록</caption>
		<tr> 
			<th>아이디</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>사업자번호</th>
			<th>회사명</th> 
			<th>대표자</th>
			<th>회사주소</th>
			<th>가입경로</th>
		</tr>
		<c:forEach var="cmember"  items="${clist}" >
		<tr>
			<td>${cmember.c_id}</td>
			<td>${cmember.c_email}</td>
			<td>${cmember.c_phone}</td>
			<td>${cmember.c_registnum}</td>
			<td>${cmember.c_company}</td>
			<td>${cmember.c_president}</td>
			<td>${cmember.c_address}</td> 
			<td>${cmember.c_valid}</td>
		</tr>
		</c:forEach>
	
	</table>
</body>

</html>