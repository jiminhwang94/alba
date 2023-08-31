<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../include/header.jsp" %>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../include/mainmenu.jsp" %>
	
	<form method="get" action="/member/searchsuc" >
		<label>이름</label> <input type="text" name="p_name">
		<label>전화번호</label> <input type="text" name="p_phone">
		<input type="submit" value="찾기">
	</form>
</body>
</html>