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
		<table align="center">
			<form:form action="neworder" method="post" modelAttribute="neworder">
			
				<h2>COURIER DETAILS</h2>
				<tr>
				<%-- <div>
				<td>
					<label for="courierReferenceNo">Courier ReferenceNo</label>
					</td>
					<td>
					<div>
						<form:input path="courierReferenceNo" />
					</div>
					</td>
				</div> --%>
				</tr>
				<tr>
				<div>
				<td>
					<label for="customerId">CustomerId</label>
					</td>
					<div>
					<td>
						<form:input path="customerId" />
						</td>
					</div>
				</div>
				</tr>
				<tr>
				<div>
				<td>
					<label for="courierType">Courier type</label></td>
					<div>
					<td>
						<form:input path="courierType" />
						</td>
					</div>
				</div>
				</tr>
				<tr>
				<div>
				<td>
					<label for="courierWeight">Courier Weight</label></td>
					<div>
					<td>
						<form:input path="courierWeight" /></td>
					</div>
				</div>
				</tr>
				<tr>
				<div>
				<td>
					<label for="courierCost">Courier Cost</label> </td>
					<div>
						<td> <form:input path="courierCost" /></td>
					</div>
				</div>
				</tr>
				<tr>
				<div>
				<td>
					<label for="source">Source </label> </td>
					<div>
					<td>
						<form:input path="source" />
						</td>
					</div>
				</div>
				</tr>
				<tr>
				<div>
				<td>
					<label for="destination">Destination</label></td>
					<div>
					<td>
						<form:input path="destination" /></td>
					</div>
				</div>
				</tr>
				<tr>
				<div>
				<td>
					<label for="bookedDate">Booked Date</label></td>
					<div>
					<td>
						<form:input path="bookedDate" /></td>
					</div>
				</div>
				</tr>
				<tr>
				<div>
				<td>
					<label for="expectedDate">Expected Date</label>
					</td>
					<div>
					<td>
						<form:input path="expectedDate" /></td>
					</div>
				</div>
				</tr>
                <tr>
                <td colspan="2">
				<form:button>Register</form:button></td>
				</tr>
			</form:form>
			</table>
		</div>
	</div>
</body>
</html>