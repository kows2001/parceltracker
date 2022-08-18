<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courier Registered Details</title>
<style><%@include file="/WEB-INF/views/css/customer-courier-list.css"%>

 </style>
</head>
<body>

	<a href="/customer/backtodashboard"> <input
				onclick="change()" type="button" value="Back"></input>
			</a>
	<h1>COURIER LIST</h1>
	<br>
	<br>
	<br>
	<div class="table">
		<table  >
			<thead>
				<tr>
				    <th>CUSTOMER ID</th>
				    <th>BOOKED DATE</th>
					<th>COURIER REFERENCE NUMBER</th>
					<th>TYPE OF COURIER</th>
					<th>WEIGHT</th>
					<th>COST</th>
					<th>SOURCE</th>
					<th>DESTINATION</th>
					
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="co" items="${courierlist}">
					<tr><td>${co.customerId}</td>
					<td>${co.bookedDate}</td>
					<td>${co.courierReferenceNo}</td>
					<td>${co.courierType}</td>
					<td>${co.courierWeight}</td>
					<td>${co.courierCost}</td>
					<td>${co.source}</td>
					<td>${co.destination}</td>
						
						
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>




</body>
</html>



