<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="root">
		<div id="form">
			<form:form action="newemp" method="post" modelAttribute="newemp">
			<div>
					<label for="employeeId"> Employee Id</label>
					<div>
						<form:input path="employeeId" />
					</div>
				</div>
				<div>
					<label for="employeeName"> Employee Name</label>
					<div>
						<form:input path="employeeName" />
					</div>
				</div>
				<div>
					<label for="employeeGender"> Enmployee Gender</label>
					<div>
						<form:input path="employeeGender" />
					</div>
				</div>
				<div>
					<label for="dateOfBirth"> Employee Date Of Birth</label>
					<div>
						<form:input path="dateOfBirth" />
					</div>
				</div>
					
				<div>
					<label for="employeeAddress"> Employee Address</label>
					<div>
						<form:input path="employeeAddress" />
					</div>
				</div>
				<div>
					<label for="employeeEmail"> Employee Email</label>
					<div>
						<form:input path="employeeEmail" />
					</div>
				</div>
				<div>
					<label for="employeePassword"> EmployeePassword</label>
					<div>
						<form:input path="employeePassword" />
					</div>
				</div>
				
				<div>
					<label for="empDateOfJoining">Employee Date Of Joining</label>
					<div>
						<form:input path="empDateOfJoining" />
					</div>
				</div>
				<div>
					<label for="employeeRole">Employee Role</label>
					<div>
						<form:input path="employeeRole" />
				</div>
					</div>
				<form:button>Add new Employee</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>