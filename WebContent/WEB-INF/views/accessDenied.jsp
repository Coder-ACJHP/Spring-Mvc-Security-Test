<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forbidden - Access Denied</title>
</head>
<body>
	<div align="center">
		<div style="float: left; margin-left: 30%; margin-top: 150px;">
			<h2>Sorry ${user}, you do not have permission to view this page.</h2>
 
			Click <a href="javascript:history.go(-1)">here</a>
			to go back.
		</div>
	</div>
</body>
</html>