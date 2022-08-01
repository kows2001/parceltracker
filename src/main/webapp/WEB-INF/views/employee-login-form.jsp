<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="check" method="post" modelAttribute="admin">
				<div>
					<label for="employeeRole">Employee Role</label>
					<div>
						<form:input path="employeeRole" />
					</div>
				</div>
				<div>
					<label for="employeeName">Employee Name</label>
					<div>
						<form:input path="employeeName" />
					</div>
				</div>
				<div>
					<label for="employeePassword">Password</label>
					<div>
						<form:input path="employeePassword" />
					</div>
				</div>
				<form:button>Admin Login</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>