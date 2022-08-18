<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Courier Registered Details</title>
<style><%@include file="/WEB-INF/views/css/registered-list.css"%>
 </style>
</head>
<body>
<section>

        <h1> Customer Order Details!</h1>
        

		<table >
			<thead>
				<tr>
				<th>Booked Date</th>
				<th>customer Id</th>
				<th>Courier ReferenceNo</th>
				<th>courier Type</th>
					<th>Courier Weight</th>
					<th>Courier Cost</th>
					<th>source</th>
					<th>destination</th>
					<th>Edit</th>
				</tr>
		       </thead>
			<tbody>
				<c:forEach var="co" items="${listofregisteredCourier}">
					<tr><td>${co.bookedDate}</td>
					<td>${co.customerId}</td>
					    <td>${co.courierReferenceNo}</td>
						
						<td>${co.courierType}</td>
                        <td>${co.courierWeight}</td>
						<td>${co.courierCost}</td>
						<td>${co.source}</td>
						<td>${co.destination}</td>
					
						
						<td><a href="/courierstatus/courierstatusadd?courierReferenceNo=${co.courierReferenceNo}">Update Courier Status</a></td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
       <div class="back">
       <a href="/customer/homePage" > <input
				onclick="change()" type="button" value="Back"></input>
			</a>
       
       </div>

</section>
</body>
</html>


