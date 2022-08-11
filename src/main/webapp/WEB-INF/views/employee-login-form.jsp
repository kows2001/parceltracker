<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@include file="/WEB-INF/views/css/employee-login-form.css"%>

 </style>
</head>
<body class = "container">
	
		<div class="sidenav">
		</div>
		<!-- <div class = "container"> -->
		<div class = "form">
		<form:form action="check" method="post" modelAttribute="admin">
			<div class="row">
				<div class="col-1">

					<label for="employeeRole">Employee Role</label>
				</div>
				<div class="col-2">
					<form:input path="employeeRole" placeholder="Employee Role" />
				</div>
			</div>
			<div class="row">
				<div class="col-1">
					<label for="employeeName">Employee Name</label>
				</div>
				<div class="col-2">
					<form:input path="employeeName" placeholder="Employee Name" />
				</div>
			</div>
			<div class="row">
				<div class="col-1">
					<label for="employeePassword">Password</label>
				</div>
				<div class="col-2">
					<form:input path="employeePassword" placeholder="Password"
						type="password" />
				</div>
			</div>
			
			<form:button class="btn">Admin Login</form:button>
		</form:form>
        </div>
	</div>
</body>
</html>