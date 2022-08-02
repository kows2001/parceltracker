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
			<form:form action="newcustomer" method="post" modelAttribute="newcus">
				<div>
					<label for="customerId">CustomerId</label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="customerName"> Customer Name</label>
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
					<label for="dateOfJoining">Date Of Joining</label>
					<div>
						<form:input path="dateOfJoining" />
					</div>
				</div>
				<div>
					<label for="email">email</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
				<div>
					<label for="password">password</label>
					<div>
						<form:input path="password" />
					</div>
				</div>
				<div>
					<label for="phoneNumber">Phone Number</label>
					<div>
						<form:input path="phoneNumber" />
					</div>
				</div>
				<div>
					<label for="city">city</label>
					<div>
						<form:input path="city" />
					</div>
				</div>
				<div>
					<label for="state">state</label>
					<div>
						<form:input path="state" />
					</div>
				</div>
				<form:button>Add new Doctor</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>