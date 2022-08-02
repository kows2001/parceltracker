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
			<form:form action="checkcustomerlogin" method="post" modelAttribute="customer">
				
				<div>
					<label for="customerName">User Name</label>
					<div>
						<form:input path="customerName" />
					</div>
				</div>
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" />
					</div>
				</div>
				<form:button>Admin Login</form:button>
			</form:form>
		</div>
	</div>
	 <!-- <a href="registerandtrack">Register And Track Your Courier</a> -->
</body>
</html>