<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Courierr</title>

<script>
var date = new Date();
var tdate = date.getDate();
id(tdate<10){
	tdate = '0'+tdate;
}
var month = date.getMonth()+1;
if(month<10){
	month = '0'+month;
}
var year = date.getUTCFullYear();
var minDate = year + "-" + month + "-" + tdate;
document.getElementById("date").setAttribute('min',minDate)

</script>
</head>
<body>
   <div id="root">
		<div id="form">
			<form:form action="courierStatusUpdate" method="post" modelAttribute="updatestatus">
				<div>
					<label for="courierReferenceNo">Courier ReferenceNo</label>
					<div>
						<form:input path="courierReferenceNo" readonly = "true"/>
					</div>
				</div>
				<div>
					<label for="statusUpdateDate"> Status UpdateDate</label>
					<div>
						<form:input path="statusUpdateDate" type = "date" id="date" />
					</div>
				</div>
				<div>
					<label for="currentPlace">Current Place</label>
					<div>
						<form:input path="currentPlace" />
					</div>
				</div>
				<div>
					<label for="checkInTime">CheckInTime</label>
					<div>
						<form:input path="checkInTime" />
					</div>
				</div>
				<div>
					<label for="checkOutTime">CheckOutTime</label>
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
				
				<form:button>Update Status</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>