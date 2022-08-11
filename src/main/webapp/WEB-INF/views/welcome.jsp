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
	
		<div align="center">
			<h1>welcome</h1>
			<h2>Your Courier Was Registered Successfully</h2>
			
			<a href="/customer/gotodashboard">Back </a>
		</div>
	 <form:form  action="" modelAttribute="courierReferenceNo">
	 
	
	<form:input path="courierReferenceNo"/>
	 
	 
	 
	 </form:form>
</body>
</html>