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
				<div>
					<label for="customer_id"> Customer Id </label>
					<div>
						<form:input path="customer_id" />
					</div>
				</div>
				<div>
					<label for="name">Name</label>
					<div>
						<form:input path="name" />
					</div>
				</div>
				<div>
					<label for="phone_number">Phone number</label>
					<div>
						<form:input path="phone_number" />
					</div>
				</div>
				
				<div>
					<label for="weight">weight</label>
					<div>
						<form:input path="weight" />
					</div>
				</div>
				<div>
					<label for="cost">cost</label>
					<div>
						<form:input path="cost" />
					</div>
				</div>
				<div>
					<label for="source">source</label>
					<div>
						<form:input path="source" />
					</div>
				</div>
				<div>
					<label for="destination">Destination</label>
					<div>
						<form:input path="destination" />
					</div>
				</div>
				
				<div>
					<label for="booked_date">Booked date</label>
					<div>
						<form:input path="booked_date" />
					</div>
				</div>
				<form:button>Add new</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>