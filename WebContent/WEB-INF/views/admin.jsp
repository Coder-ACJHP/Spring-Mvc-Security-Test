<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page session="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ADMIN PAGE</title>
</head>
<body>
	<h1>Title : ${title}</h1>
	<h1>Message : ${message}</h1>
	
	
	<c:if test="${pageContext.request.userPrincipal.name != null }">
		<h2>Welcome: ${pageContext.request.userPrincipal.name}</h2><br>
		<c:url var="logoutUrl" value="/j_spring_security_logout"/>
		<form action="${logoutUrl}" method="POST">
		    <input type="submit" value="Logout"/>
		    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		</form>
	</c:if>
</body>
</html>