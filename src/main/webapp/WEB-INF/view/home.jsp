<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Our Campany Home Page</title>
</head>
<body>
	Hello Welcome !!


	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">
		<input value="logout" type="submit">
	</form:form>
</body>
</html>