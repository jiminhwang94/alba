<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="/resources/css/register.css" />
<script>
	function confirmLogin() {
	    if (confirm("로그인을 하시겠습니까?")) {
	        location.href = "clogin.jsp";
	    } else {
			alert("취소");
			location.href = "Lhome.jsp";
		}
	}
//지원목록을 조회하는데 게시글 클릭해서 보고 싶으면 "로그인"(기업회원로그인으로)을 싫다면 "취소"(현 페이지 유지)를, 로그인O->클릭시 게시글로 넘어감. 
// 를 구현하고 싶다.
</script>
</head>
<body onload="confirmLogin()">
	<%@include file="../include/header.jsp"%>
	<%@include file="../include/mainmenu.jsp"%>
<body class="bg-gradient-primary">

	<script type="text/javascript">
		$(function() {
			
			let formObj = $("form");
			
			$('button').on("click",
					function(e)
					{
						e.preventDefault();
						
						const operation = $(this).data("oper");
						
						console.log(operation);
						
						if (operation === 'remove')
							{
								formObj.attr("action", "/list/l_remove");
							}
						else if (operation === 'list')
							{
								formObj.find("#supporter").remove();
								formObj.attr("action", "/list/l_list")
							}
							formObj.submit();
						});
			});
	</script>

	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-5">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">지원목록 조회</h1>
					</div>
					<!-- /.col-lg12 -->
				</div>
				<!-- /.row -->
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">list Read Page</div>
					<!-- /.panel-heading -->
					<div class="panel-body">

						<div class="form-group">
							<label>지원자</label> <input class="form-control" name='supporter'
								value='<c:out value="${supporter}"/>' readonly="readonly">
						</div>
						<c:forEach items="${list.relist}" var="relist">
							<div class="form-group">
								<label>제목</label> <input class="form-control" name='title'
									value='<c:out value="${relist.title}"/>' readonly="readonly">
							</div>

							<div class="form-group">
								<label>학력</label> <input class="form-control" name='ability'
									value='<c:out value="${relist.ability}"/>' readonly="readonly">
							</div>

							<div class="form-group">
								<label>경력</label> <input class="form-control" name='career'
									value='<c:out value="${relist.career}"/>' readonly="readonly">
							</div>

							<div class="form-group">
								<label>희망근무조건</label> <input class="form-control" name='hope'
									value='<c:out value="${relist.hope}"/>' readonly="readonly">
							</div>

							<div class="form-group">
								<label>자기소개서</label> <input class="form-control"
									name='introduce' value='<c:out value="${relist.introduce}"/>'
									readonly="readonly">
							</div>

						</c:forEach>


						<c:forEach items="${list.pmemlist}" var="pmemlist">
							<div class="form-group">
								<label>p_name</label> <input class="form-control" name='p_name'
									value='<c:out value="${pmemlist.p_name}"/>' readonly="readonly">
							</div>
							<div class="form-group">
								<label>p_birth</label> <input class="form-control"
									name='p_birth' value='<c:out value="${pmemlist.p_birth}"/>'
									readonly="readonly">
							</div>
							<div class="form-group">
								<label>p_sex</label> <input class="form-control" name='p_sex'
									value='<c:out value="${pmemlist.p_sex}"/>' readonly="readonly">
							</div>
							<div class="form-group">
								<label>p_email</label> <input class="form-control"
									name='p_email' value='<c:out value="${pmemlist.p_email}"/>'
									readonly="readonly">
							</div>
							<div class="form-group">
								<label>p_phone</label> <input class="form-control"
									name='p_phone' value='<c:out value="${pmemlist.p_phone}"/>'
									readonly="readonly">
							</div>
							<div class="form-group">
								<label>p_address</label>
								<textarea class="form-control" rows="3" name='p_address'
									readonly="readonly"><c:out
										value="${pmemlist.p_address}" /></textarea>
							</div>
						</c:forEach>
					</div>
					<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
					<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
					<button type="submit" data-oper='list' class="btn btn-info">List</button>

					<form id='operForm' action="/board/modify" method="get">
						<input type='hidden' id='company' name='company'
							value='<c:out value="${list.company}"/>'> <input
							type='hidden' id='supporter' name='supporter'
							value='<c:out value="${list.supporter}"/>'>
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>