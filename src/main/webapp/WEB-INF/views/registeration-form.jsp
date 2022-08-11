<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@include file="/WEB-INF/views/css/registration-form.css"%>

 </style>
</head>
<body>
	
	<div class="container">

		<form:form action="neworder" method="post" modelAttribute="neworder">

			<div class="row">
				<div class="col-25">


					<label for="customerId">CustomerId</label>
				</div>
				<div class="col-75">
					<form:input path="customerId" />

				</div>
			</div>

			<div class="row">
				<div class="col-25">


					<label for="courierType">Courier type</label>
				</div>
				<div class="col-75">
					<form:input path="courierType" />

				</div>
			</div>

			<div class="row">
				<div class="col-25">


					<label for="courierWeight">Courier Weight</label>

				</div>
				<div class="col-75">
					<form:input path="courierWeight" />
				</div>
			</div>

			<div class="row">
				<div class="col-25">

					<label for="courierCost">Courier Cost</label>
</div>

					<div class="col-75">
						<form:input path="courierCost" />
					</div>
				</div>


				<div class="row">
					<div class="col-25">

						<label for="source">Source </label>
					</div>
					<div class="col-75">
						<form:input path="source" />

					</div>
				</div>



				<div class="row">
					<div class="col-25">


						<label for="destination">Destination</label>
					</div>
					<div class="col-75">
						<form:input path="destination" />

					</div>
				</div>

			

					<div class="row">
						<div class="col-25">


							<label for="bookedDate">Booked Date</label>
						</div>
						<div class="col-75">
							<form:input path="bookedDate" />
						</div>
					</div>

					<div class="row">
						<div class="col-25">

							<label for="expectedDate">Expected Date</label>
						</div>
						<div class="col-75">
							<form:input path="expectedDate" />
						</div>
					</div>


					<form:button>Register</form:button>
		</form:form>

	</div>

</body>
</html>