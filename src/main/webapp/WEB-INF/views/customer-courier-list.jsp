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
      <form:form action="" method="post" modelAttribute="getCustomer">
			
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

				
			</form:form>
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



