<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page session="true"%>
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

<title>ADMIN PAGE</title>
</head>
<body>
<div style="margin-top: 100px;"></div>
	<div class="container">
		<div class="row">
		<div class="col-sm-3"></div>
			<div class="col-md-6">
				<div class="alert alert-success" role="alert">
					<strong>Title :</strong> ${title}
				</div>
				<div class="alert alert-info" role="alert">
					<strong>Message :</strong> ${message}
				</div>

				<c:if test="${pageContext.request.userPrincipal.name != null }">
					<h2>Welcome: ${pageContext.request.userPrincipal.name}</h2>
					<br>
					<c:url var="logoutUrl" value="/j_spring_security_logout" />
					<form action="${logoutUrl}" method="POST">
						<button type="submit" class="btn btn-secondary">Logout</button>
						<button type="submit" class="btn btn-primary" onclick="location.href='/hello'">Go to hello page</button>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</c:if>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
</body>
</html>