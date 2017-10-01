<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="false"%>
<html>
<body>
	<h1>Title : ${title}</h1>
	
	<h1>Message : ${message}</h1><br>
	
	<c:if test="${pageContext.request.userPrincipal.name != null }">
		<h2>Dear ${pageContext.request.userPrincipal.name}</h2>
		<c:url var="logoutUrl" value="/j_spring_security_logout"/>
		<form action="${logoutUrl}" method="POST">
		    <input type="submit" value="Logout"/>
		    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		</form>
	</c:if>
	
</body>
</html>