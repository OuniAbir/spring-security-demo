<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Our Campany Home Page</title>
</head>
<body>

	<p>
		User :
		<security:authentication property="principal.username" />
		<br> <br> Role(s) :
		<security:authentication property="principal.authorities" />
	</p>


	Hello Welcome !!


	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">
		<input value="logout" type="submit">
	</form:form>
</body>
</html>