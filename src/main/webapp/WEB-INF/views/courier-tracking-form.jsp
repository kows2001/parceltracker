<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>

<style><%@include file="/WEB-INF/views/css/couriertrackingform.css"%>

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
	
 
  <div class = "center">
		<div class ="container">
			<form action="courierStatusByRefNo"  >
					<div class="label">
						<label for="courierReferenceNo">TRACK YOUR ORDER</label>
					</div>
					
					<div class="row">
					<div class="col-25">
						<input type = "text" id = "courierReferenceNo" name = "courierReferenceNo" />
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