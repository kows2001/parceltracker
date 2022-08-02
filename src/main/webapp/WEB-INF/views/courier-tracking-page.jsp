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
			<form:form action="courierStatusAdd" method="post" modelAttribute="addstatus">
				<div>
					<label for="courierReferenceNo">Enter Your Courier Reference Number</label>
					<div>
						<form:input path="courierReferenceNo" />
					</div>
				</div>
				
				
				<form:button>Track your courier</form:button>
			</form:form>
		</div>
	</div>
</body>
</html>