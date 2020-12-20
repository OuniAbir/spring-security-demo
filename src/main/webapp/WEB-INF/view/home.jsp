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


	<hr>

	<!-- Add a link to /leaders ... this is for managers  -->

	<security:authorize access="hasRole('MANAGER')">
		<p>
			<a href="${pageContext.request.contextPath}/leaders"> LeaderShip
				Meetings </a> (Only for manager peeps)
		</p>
		<hr>
		<hr>
	</security:authorize>


	<!-- Add a link to /systems ... this is for admins  -->

	<security:authorize access="hasRole('ADMIN')">
		<p>
			<a href="${pageContext.request.contextPath}/systems"> IT Systems
				Meetings </a> (Only for admin peeps)

		</p>
		<hr>
	</security:authorize>


	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">
		<input value="logout" type="submit">
	</form:form>
</body>
</html>