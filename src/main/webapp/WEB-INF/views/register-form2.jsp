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
			<form:form action="neworder" method="post" modelAttribute="neworder">
			
				<h2>COURIER DETAILS</h2>
				<div>
					<label for="courierReferenceNo">Courier ReferenceNo</label>
					<div>
						<form:input path="courierReferenceNo" />
					</div>
				</div>
				<div>
					<label for="customerId">CustomerId</label>
					<div>
						<form:input path="customerId" />
					</div>
				</div>
				<div>
					<label for="courierType">Courier type</label>
					<div>
						<form:input path="courierType" />
					</div>
				</div><div>
					<label for="courierWeight">Courier Weight</label>
					<div>
						<form:input path="courierWeight" />
					</div>
				</div><div>
					<label for="courierCost">Courier Cost</label>
					<div>
						<form:input path="courierCost" />
					</div>
				</div><div>
					<label for="source">Source </label>
					<div>
						<form:input path="source" />
					</div>
				</div><div>
					<label for="destination">Destination</label>
					<div>
						<form:input path="destination" />
					</div>
				</div><div>
					<label for="bookedDate">Booked Date</label>
					<div>
						<form:input path="bookedDate" />
					</div>
				</div><div>
					<label for="expectedDate">Expected Date</label>
					<div>
						<form:input path="expectedDate" />
					</div>
				</div>

				<form:button>Add new</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>