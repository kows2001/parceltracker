<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add New Employee</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>

<style><%@include file="/WEB-INF/views/css/courierstatusbyrefno.css"%>

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
			<li><a href="/customer/homePage"> Home</a></li>
			<li><a href="/customer/signupform"> Signup</a></li>
			<li><a href="/customer/customerlogin"> login</a></li>
			<li><a href="/employee/employeelogin"> admin</a></li>
		</ul>
	</nav>
	
 
        <div class="container1">
        <div class="form">
            <form:form action=""  modelAttribute="courierstatusbyrefno">
                <div class="row">
							<div class="col-1">
					<label for="courierReferenceNo">Courier Reference No</label>
					</div>
					<div class="col-2">
						<form:input path="courierReferenceNo"  readonly="true"/>
					</div>
				</div>
				<div class="row">
							<div class="col-1">
					<label for="statusUpdateDate">Status UpdateDate</label>
					</div>
					<div class="col-2">
						<form:input path="statusUpdateDate" readonly="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-1">
					<label for="currentPlace">Current Place</label>
					</div>
					<div class="col-2">
						<form:input path="currentPlace" readonly="true" />
					</div>
				</div>
				<div class="row">
							<div class="col-1">
					<label for="checkInTime">Check In Time</label>
					</div>
					<div class="col-2">
						<form:input path="checkInTime" readonly="true"/>
					</div>
				</div>
				<div class="row">
							<div class="col-1">
					<label for="checkOutTime">Check Out Time</label>
					</div>
					<div class="col-2">
						<form:input path="checkOutTime"  readonly="true"/>
					</div>
				</div>
				<div class="row">
							<div class="col-1">
					<label for="courierStatus">Courier Status</label>
					</div>
					<div class="col-2">
						<form:input path="courierStatus" readonly="true"/>
					</div>
				</div>
				
       </form:form>
       </div>
	</div>			
       <div class="container">
      <div class="img">
					<img src="https://images.unsplash.com/photo-1566576721346-d4a3b4eaeb55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGFyY2VsJTIwZGVsaXZlcnl8ZW58MHx8MHx8&w=1000&q=80.jpg" alt="W3Schools.com" width="550px"  height="450px">
					</div> <div class="content">
    <h1>Making sure your parcel gets to you when you need it.</h1>
  </div>
					
</div> 

</body>
</html>