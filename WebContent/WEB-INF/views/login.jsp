<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>LOGIN - Secure</title>
</head>
<body>
	<div style="text-align: center; float: left; margin-left: 200px;">
		<h1>Enter your credentials</h1>
		
		<form action="<c:url value='j_spring_security_check' />" method="POST">
		
			<table>
				<tr>
					<td>User name:</td>
					<td><input type="text" name="username"></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td colspan="2" align="right">
						<input type="submit" value="Login">
					</td>
				</tr>
			</table>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
		<font color="red">
			<c:if test="${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message != null}">
				<label>Invalid user name or password!</label>
			</c:if>
		</font>
	</div>
</body>
</html>