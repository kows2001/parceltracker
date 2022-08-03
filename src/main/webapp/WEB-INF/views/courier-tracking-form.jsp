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
			<form action="courierStatusByRefNo"  >
				<div>
					<label for="courierReferenceNo">Enter Your Courier Reference Number</label>
					
					<div>
						<%-- <form:input path="courierReferenceNo" /> --%>
						<input type = "text" id = "courierReferenceNo" name = "courierReferenceNo"/>
					</div>
				</div>
				
				
				<input type="submit" value = "track"/>
			</form>
			
			<%-- <a href="/courierstatus/courierstatusupdate?courierReferenceNo=${co.courierReferenceNo}">Update Courier Status</a></td> --%>
		</div>
	</div>
</body>
</html>