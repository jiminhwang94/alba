<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<%@include file="../include/header.jsp" %>
<%@include file="../include/mainmenu.jsp" %>
</head>
<body>

</body>
 	<table>
		<caption>회원목록</caption>
		<tr> 
			<th>아이디</th>
			<th>이름</th>
			<th>성별</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>가입경로</th>
			<th>개인정보</th>
		</tr>
		<c:forEach var="pmember" items="${plist}" >
		<tr>
			<td>${pmember.p_id}</td>
			<td>${pmember.p_name}</td>
			<td>${pmember.p_sex}</td>
			<td>${pmember.p_email}</td>
			<td>${pmember.p_phone}</td>
			<td>${pmember.p_address}</td>
			<td>${pmember.p_path}</td>
			<td>${pmember.p_valid}</td>
		</tr>
		</c:forEach>
	
	</table>
</html>