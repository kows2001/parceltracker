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
			<form:form action="" method="post" modelAttribute="register">
				<div>
					<label for="customerId"> Customer Id </label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="customerName">Customer Name</label>
					<div>
						<form:input path="customerName" />
					</div>
				</div>
				<div>
					<label for="gender">Gender</label>
					<div>
						<form:input path="gender" />
					</div>
				</div>

				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" />
					</div>
				</div>

				<div>
					<label for="phoneNumber">Phone number</label>
					<div>
						<form:input path="phoneNumber" />
					</div>
				</div>
						</form:form>
		</div>
	</div>
</body>
</html>