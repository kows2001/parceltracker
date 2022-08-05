<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login</title>
</head>
<body style="background-color: beige;">
	<body>
	<h2 align="center">Login</h2>
	<div id="root">
		<div align="center">
			<table border="" width=50%>
<form:form action="checkcustomerlogin" method="post"
		modelAttribute="customer">
		<tr>
			<div>
				<td><label for="customerName">User Name</label></td>
				<td>
					<div>
						<form:input path="customerName" />
					</div>
				</td>
			</div>
		</tr>
		<tr>
			<div>
				<td><label for="password">Password</label></td>
				<td>
					<div>
						<form:input path="password" />
					</div>
				</td>
			</div>
		</tr>
		<td colspan="2"><form:button> Login </form:button></td>
	</form:form>
	</table>
	<br>
	<div align="center">
		<label> Don't have an account</label> <a href="signupform"> <input
			onclick="change()" type="button" value="Sign Up"></input>
		</a>
	</div>
	</div>
	</div>
</body></html>