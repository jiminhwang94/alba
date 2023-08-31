<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
 

<%@include file="../include/header.jsp"%>

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
								formObj.attr("action", "/notice/n_remove");
							}
						else if (operation === 'notice')
							{
								formObj.find("#company").remove();
								formObj.attr("action", "/notice/n_notice")
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
						<h1 class="page-header">게시글 1개 조회</h1>
					</div>
					<!-- /.col-lg12 -->
				</div>
				<!-- /.row -->
			</div>
		</div>

		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">notice Read Page</div>
					<!-- /.panel-heading -->
					<div class="panel-body">

						<div class="form-group">
							<label>title</label> <input class="form-control" name='title'
								value='<c:out value="${company.title}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>company</label> <input class="form-control" name='company'
								value='<c:out value="${company.company}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>datee</label> <input class="form-control" name='datee'
								value='<c:out value="${company.datee}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>day</label> <input class="form-control" name='day'
								value='<c:out value="${company.day}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>area</label> <input class="form-control" name='area'
								value='<c:out value="${company.area}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>job</label> <input class="form-control" name='job'
								value='<c:out value="${company.job}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>age</label> <input class="form-control" name='age'
								value='<c:out value="${company.age}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>conn</label> <input class="form-control" name='conn'
								value='<c:out value="${company.conn}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>time</label> <input class="form-control" name='time'
								value='<c:out value="${company.time}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>sex</label> <input class="form-control" name='sex'
								value='<c:out value="${company.sex}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>many</label> <input class="form-control" name='many'
								value='<c:out value="${company.many}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>ability</label> <input class="form-control" name='ability'
								value='<c:out value="${company.ability}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>treatment</label> <input class="form-control" name='treatment'
								value='<c:out value="${company.treatment}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>employment</label> <input class="form-control" name='employment'
								value='<c:out value="${company.employment}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>welfare</label> <input class="form-control" name='welfare'
								value='<c:out value="${company.welfare}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label>address</label> <input class="form-control" name='address'
								value='<c:out value="${company.address}"/>' readonly="readonly">
						</div>
						
						
					</div>
					<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
					<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
					<button type="submit" data-oper='notice' class="btn btn-info">Notice</button>

					<form id='operForm' action="/notice/n_modify" method="get">
						<input type='hidden' id='company' name='company'
							value='<c:out value="${company.company}"/>'> 
					</form>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>