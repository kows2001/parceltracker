<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courier Registered Details</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="post" modelAttribute="getCustomer">
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
	<div id="table root">
		<table>
			<thead>
				<tr>
					<th>Courier ReferenceNo</th>
					<th>customerId</th>
					<th>courier Type</th>
					<th>Courier Weight</th>
					<th>Courier Cost</th>
					<th>source</th>
					<th>destination</th>
					<th>bookedDate</th>
					<th>expectedDate</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="co" items="${courierlist}">
					<tr>
						<td>${co.courierReferenceNo}</td>
						<td>${co.customerId}</td>
						<td>${co.courierType}</td>
						<td>${co.courierWeight}</td>
						<td>${co.courierCost}</td>
						<td>${co.source}</td>
						<td>${co.destination}</td>
						<td>${co.bookedDate}</td>
						<td>${co.expectedDate}</td>

					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>




</body>
</html>



