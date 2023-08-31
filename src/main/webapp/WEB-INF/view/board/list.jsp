<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>알바스토리</title>
	<link href="/resources/css/basic.css?after" rel="stylesheet">
	<link href="/resources/css/boardList.css?after" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
	<script src="/resources/js/jquery.dataTables.js"></script>
	<script src="/resources/js/jquery.dataTables.min.js"></script>
	<%@ include file="../include/header.jsp" %>
</head>
<body>
	<div class="header">
		<%@include file="../include/mainmenu.jsp" %>
	</div>
	<div class="main">
		<div class="content">
			<div class="boardMain"></div>
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
		        <thead> 
		        	<tr>
			        	<th>글번호</th>
			        	<th>기업명</th>
			        	<th>작성일</th>
			        	<th>수정일</th>
		        	</tr>
		        </thead>
		        	                   			
		        <c:forEach items="${list}" var="board">
		        	<tr>
		        		<td><span class="small"><c:out value="${board.bno }" /></span></td>
		        	    <td><a href='/board/get?bno=<c:out value="${board.bno }" />'><c:out value="${board.company }" /></a></td>
		        	                   					
		        	    <td><span class="small"><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }" /></span></td>
		        	    <td><span class="small"><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate }" /></span></td>
		        	</tr>
		        </c:forEach>
		   	</table>
 	  	</div>
 	  	<div class="pageNum_list">
	 	  	<c:if test="${cri.pageNum != 1}">
	 	  		<a href="?pageNum=${cri.pageNum - 1} " class="pageNum"><</a>
		 	 </c:if>
		 	 <a href="?pageNum=1" class="pageNum">1</a>
		 	 <a href="?pageNum=2" class="pageNum">2</a>
		 	 <a href="?pageNum=3" class="pageNum">3</a>
		 	 <a href="?pageNum=4" class="pageNum">4</a>
		 	 <a href="?pageNum=5" class="pageNum">5</a>
		 	 <a href="?pageNum=6" class="pageNum">6</a>
		 	 <a href="?pageNum=7" class="pageNum">7</a>
		 	 <a href="?pageNum=8" class="pageNum">8</a>
		 	 <a href="?pageNum=9" class="pageNum">9</a>
		 	 <a href="?pageNum=10" class="pageNum">10</a>
	 	  	<c:if test="${cri.pageNum != 10 }">
	 	  		<a href="?pageNum=${cri.pageNum + 1} " class="pageNum">></a>
	 	  	</c:if>
	 	</div>
		<div class="registerBoard">
			<a href="/board/register">후기 작성하기</a>
		</div>
	</div>
	<div class="footer">
		<%@include file="../include/footer.jsp" %>
	</div>
</body>
</html>