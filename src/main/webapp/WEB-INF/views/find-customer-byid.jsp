<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style><%@include file="/WEB-INF/views/css/findcustomerbyid.css"%>

 </style>
</head>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'><body class = "container">
	
	  
         
	<div class="sidenav">
	 <div class="btn1">
			<button style="background-color: #033747;
    color: white;" onclick="history.back()"><i class="gg-arrow-left-o"></i></button>
			
			</div> 
	<div class="img">
		<img alt="" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/2048px-Circle-icons-profile.svg.png" width="200px" height="200px">
		</div>
		<div class="welcome">
		<label>Welcome!!  </label>
		<form:form action="" method="post" modelAttribute="findcustomerbyid">
		<form:input path="customerName"  readonly="true"/>
		</form:form>
		</div>
		
		</div>
		<div>
		
		<h2>Edit Profile</h2></div>
		<div class = "container">
		<div class="form">
			<form:form action="customerupdateform" method="Get" modelAttribute="findcustomerbyid">

				<div class="row">
					<div class="col-1">
						<label for="customerId">CustomerId</label>
					</div>
					<div class="col-2">
						<form:input path="customerId" readonly="true"/>
					</div>
				</div>

				<div class="row">
					<div class="col-1">
						<label for="customerName"> Customer Name</label>
					</div>
					<div class="col-2">
						<form:input path="customerName" readonly="true" />
					</div>
				</div>

				<div class="row">
					<div class="col-1">
						<label for="gender">Gender</label>
					</div>
					<div class="col-2">
						<form:input path="gender" readonly="true" />
					</div>
				</div>

				<div class="row">
					<div class="col-1">
						<label for="dateOfJoining">Date Of Joining</label>
					</div>
					<div class="col-2">
						<form:input path="dateOfJoining"  readonly="true"/>
					</div>
				</div>

				<div class="row">
					<div class="col-1">
						<label for="email">Email</label>
					</div>
					<div class="col-2">
						<form:input path="email" readonly="true"/>
					</div>
					</div>

					

				<div class="row">
					<div class="col-1">
						<label for="phoneNumber">Phone Number</label>
					</div>
					<div class="col-2">
						<form:input path="phoneNumber" readonly="true"/>
					</div>
				</div>

				<div class="row">
					<div class="col-1">
						<label for="city">City</label>
					</div>
					<div class="col-2">
						<form:input path="city" readonly="true"/>
					</div>
				</div>

				<div class="row">
					<div class="col-1">
						<label for="state">State</label>
					</div>
					<div class="col-2">
						<form:input path="state" readonly="true" />
					</div>
				</div >
				<div  class="btn">
				<form:button >Edit</form:button>
				</div>
			</form:form>

			
		</div>
	</div>
</body>
</html>