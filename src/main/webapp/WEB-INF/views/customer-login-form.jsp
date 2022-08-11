<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login</title>

<style><%@include file="/WEB-INF/views/css/customerlogin.css"%>

 </style>
</head>
<body>

	<h2 align="center">Login</h2>
	<div class="container">

		<form:form action="checkcustomerlogin" method="post"
			modelAttribute="customer">

			<div class="row">
				<div class="col-1">
					<label for="email" >Email</label>
				</div>

				<div class="col-2">
					<form:input path="email" placeholder="Email" />
				</div>

			</div>

			<div class="row">
				<div class="col-1">

					<label for="password">Password</label>
					</div>
					
						<div class="col-2">
							<form:input path="password" placeholder="password" />
						</div>
					
				</div>
				
				<form:button class="btn1"> Login </form:button>
		</form:form>
		
		
		<div align="center" class="btn2">
			<label> Don't have an account</label> <a href="signupform"> <input
				onclick="change()" type="button" value="Sign Up"></input>
			</a>
		</div>
	</div>
	</div>
</body>
</html>