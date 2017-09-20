<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create an Account</title>

<style type="text/css">
.error {
	color: red;
	font-size: 15px;
}
</style>
</head>
<body>
	<form:form commandName="aNewAccount" action="createAccount">
		<div>
			<form:input name="firstName" path="firstName" type="text" />
			<form:errors path="firstName" cssClass="error" />
		</div>
		<div>
			<form:input name="lastName" path="lastName" type="text" />
			<form:errors path="lastName" cssClass="error" />
		</div>
		<div>
			<form:input name="age" path="age" type="text" />
			<form:errors path="age" cssClass="error" />
		</div>
		<div>
			<form:input name="address" path="address" type="text" />
			<form:errors path="address" cssClass="error" />
		</div>
		<div>
			<form:input name="email" path="email" type="text" />
			<form:errors path="email" cssClass="error" />
		</div>
		<input type="submit" name="Create" />
	</form:form>
</body>
</html>