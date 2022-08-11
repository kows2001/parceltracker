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

	<div id="table root">
		<table border="2">
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
				<c:forEach var="co" items="${listofregisteredCourier}">
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
						<td><a href="/courierstatus/courierstatusadd">Add Courier Status</a></td>
						<td><a href="/courierstatus/courierstatusupdate?courierReferenceNo=${co.courierReferenceNo}">Update Courier Status</a></td>
					</tr>
				</c:forEach>
				
			</tbody>
		</table>

	</div>
</body>
</html>



