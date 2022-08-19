<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>

<style><%@include file="/WEB-INF/views/css/welcome.css"%>

 </style>
</head>
<body>

 <nav>
    <div class="btn1">
			<button style="background-color: #033747;
    color: white;" onclick="history.back()"><em class="gg-arrow-left-o"></em></button>
		</div>	
			
		<div Class="logo">
			<p>SMART EXPRESS</p>
	</div>
	
		<ul>
			<li><a href="/customer/signupform"> Home</a></li>
			<li><a href="/customer/signupform"> Signup</a></li>
			<li><a href="/customer/customerlogin"> login</a></li>
			<li><a href="/employee/employeelogin"> admin</a></li>
		</ul>
	</nav>
	
 
	<div class="img">
	<img alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOIsWymz4r0valZKI8OG9Ma_1NbGTd14abSg&usqp=CAU.jpg" width="500" height="300">
	</div>
		
			
			<h2>Your Courier Was Registered Successfully</h2>
		<div class="container" >
		<label>Your Reference Number:  </label>
		<form:form  action="" modelAttribute="courierReferenceNo">
		<form:input path="courierReferenceNo"/>
		</form:form>
	 	</div>
	 	
</body>
</html>