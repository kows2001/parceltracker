<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Courierr</title>
</head>
<body>
   <div id="root">
		<div id="form">
			<form:form action="courierStatusAdd" method="post" modelAttribute="addstatus">
				<div>
					<label for="courierReferenceNo">Courier ReferenceNo</label>
					<div>
						<form:input path="courierReferenceNo" />
					</div>
				</div>
				<div>
					<label for="statusUpdateDate">Status UpdateDate</label>
					<div>
						<form:input path="statusUpdateDate" />
					</div>
				</div>
				<div>
					<label for="currentPlace">Current Place</label>
					<div>
						<form:input path="currentPlace" />
					</div>
				</div>
				<div>
					<label for="checkInTime">Check In Time</label>
					<div>
						<form:input path="checkInTime" />
					</div>
				</div>
				<div>
					<label for="checkOutTime">Check Out Time</label>
					<div>
						<form:input path="checkOutTime" />
					</div>
				</div>
				<div>
					<label for="courierStatus">Courier Status</label>
					<div>
						<form:input path="courierStatus" />
					</div>
				</div>
				
				<form:button>Add Courier Status</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>