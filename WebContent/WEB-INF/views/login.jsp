<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<spring:url value="/resources/css/bootstrap.css" var="bootsrapCss" />
<spring:url value="/resources/css/bootstrap.min.css"
	var="bootsrapMinCss" />
<spring:url value="/resources/js/bootstrap.js" var="bootsrapJs" />
<spring:url value="/resources/js/bootstrap.min.js" var="bootsrapMinJs" />

<link href="${bootsrapCss}" rel="stylesheet" />
<link href="${bootsrapMinCss}" rel="stylesheet" />
<script src="${bootsrapJs}"></script>
<script src="${bootsrapMinJs}"></script>

<title>LOGIN - Secure</title>
</head>
<body>
<div style="margin-top: 10px;"></div>
	<div class="container">
		<div class="row">
		<div class="jumbotron jumbotron-fluid">
		  <div class="container">
		    <h2 class="display-3">Spring Security &amp; Spring Mvc</h2>
		    <p class="lead">This is a simple Spring security and mvc test application
		    with custom login,<br> access denied pages and database connection to auth.</p>
		  </div>
		</div>
			<div class="col-sm-6">
				<h1>Enter your credentials</h1>
				<form action="<c:url value='j_spring_security_check' />"
					method="POST">
					<div class="form-group">
						<label for="exampleInputEmail1">User name</label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" placeholder="User name"
							name="username">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" id="exampleInputPassword1"
							placeholder="Password" name="password">
					</div>
					<button type="submit" class="btn btn-primary">Login</button>
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
				<c:if
					test="${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message != null}">
					<div style="margin-top: 20px;"></div>
					<div class="alert alert-danger" role="alert">Invalid user name or password!!</div>
				</c:if>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
</body>
</html>