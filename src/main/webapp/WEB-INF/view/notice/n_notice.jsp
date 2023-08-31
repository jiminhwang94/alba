<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../include/header.jsp"%>
<link rel="stylesheet" href="/resources/css/Job.css" />
<link rel="stylesheet" href="/resources/css/JobGoods.css" />
<link rel="stylesheet" href="/resources/css/Sub.css" />
<title>Insert title here</title>
	<style type="text/css">
		span.company  {
		    display: block;
		    height: auto;
		    padding: 2px 0 6px !important;
		    font-size: 13px;
		    background: none !important;
		    color: #0075ab;
		}
		
		span.title {
			font-size: 15px;
    		word-break: break-all;
    	}
    
	</style>
</head>
<body class="job">
	<%@include file="../include/mainmenu.jsp"%>

	<div class="container">
		<div style="padding-top: 50px">
			<table class="table table-hover bg-">
				<tr>


					<th scope="col" class="local">근무지</th>
					<th scope="col" class="title">회사명/공고제목</th>
					<th scope="col" class="data">근무시간</th>
					<th scope="col" class="pay">급여</th>
					<th scope="col" class="regDate">등록일</th>

				</tr>

				<c:forEach items="${n_notice}" var="notice">
					<tr class="firstLine ">
						<td class="local first " scope="row"><div class="L_MyAd_"></div> <c:out value="${notice.area}"/></td>
						<td class="title"><a
							href="../notice/n_get?company=${notice.company}"
							class=""><span class="company"><c:out value="${notice.company}"/></span><br>
							<span class="title"><c:out value="${notice.title}"/></span></a>
							<span class="funcBtn"> </span></td>
						<td class="data"><c:out value="${notice.time}"/><br></td>
						<td class="pay"><span class="payIcon hour"><c:out value="${notice.conn}"/></span><br>
							<!-- <span class="number">9,620</span> --></td>
						<td class="regDate last"><strong>3분전</strong></td>
					</tr>
				</c:forEach>
			</table>

		</div>
		<form id="actionForm" action="/service/s_list" method="get"></form>
	</div>
</body>
</html>
