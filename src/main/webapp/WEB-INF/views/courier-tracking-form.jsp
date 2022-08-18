<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@include file="/WEB-INF/views/css/couriertrackingform.css"%>

 </style>
</head>
<body>
  <div class = "center">
		<div class ="container">
			<form action="courierStatusByRefNo"  >
					<div class="label">
						<label for="courierReferenceNo">TRACK YOUR ORDER</label>
					</div>
					
					<div class="row">
					<div class="col-25">
						<input type = "text" id = "courierReferenceNo" name = "courierReferenceNo"/>
					</div>
			
				<div class="col-75">
				
				<input type="submit" value = "track"/>
				</div>
				</div>
			</form>
			
		
		</div>
	</div>
</body>
</html>