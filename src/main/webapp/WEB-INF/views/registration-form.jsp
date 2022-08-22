<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style><%@include file="/WEB-INF/views/css/registration-form.css"%>

 </style>
 
<script>
function calculation() {
	var courierType = document.getElementById("courierType").value;
	var courierWeight = document.getElementById("courierWeight").value;

	var val;
	if (courierType == "Document") {
		val = parseInt(courierWeight) * 10;
	} else if (courierType == "Metal") {
		val = parseInt(courierWeight) * 5;
	} else if (courierType == "Glass") {
		val = parseInt(courierWeight) * 20;
	} else if (courierType == "Plastic") {
		val = parseInt(courierWeight) * 15;
	} else {
		val = null;
	}
	document.getElementById("courierCost").value = val;
} 

var destinationCheck = function() {
	if (document.form.destination.value == "") {
		if (alert("Please enter your to address")) {
			document.form.destination.focus();
		}
		else
document.activeElement.blur();
	}
	else {
		return false;
	}

}

var sourceCheck = function() {
	if (document.form.source.value == "") {
		if (alert("Please enter your from address")){ 
				 document.form.source.focus();
	}
	else
		document.activeElement.blur();
}
 else {
	return false;
} 
	
}

var courierWeightCheck = function() {
	var weightRegex = new RegExp("^[0-9]{1,4}$")
	if (!document.form.courierWeight.value.match(weightRegex)) {
		if (alert("Please enter weight in kg")){ 
				 document.form.courierWeight.focus();
	}
	else
		document.activeElement.blur();
}
 else {
	return false;
} 

}

</script>
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
	
 
	
	 <h1> Get Start A New Order With Us</h1>
	<div id="form" class ="box">

		<form:form action="neworder" method="post" modelAttribute="neworder" name="form">

			<div class="row">
				<div class="col-25">


					<label for="customerId">CustomerId</label>
				</div>
				<div class="col-75">
					<form:input path="customerId" readonly="true" />

				</div>
			</div>

			<div class="row">
				<div class="col-25">


					<label for="courierType">Courier type</label>
				</div>
				<div class="col-75">
					<form:select  path="courierType"  name = "courierType" onchange = "calculation()" required = "true">
					 <form:option value="Document">Select courier type</form:option>
					 <form:option value="Document">Document</form:option>
					  <form:option value="Metal">Metal</form:option>
					   <form:option value="Glass">Glass</form:option>
					    <form:option value="Plastic">Plastic</form:option>
					    </form:select>
					
				</div>
			</div>

			<div class="row">
				<div class="col-25">


					<label for="courierWeight">Courier Weight</label>

				</div>
				<div class="col-75">
					<form:input path="courierWeight"  placeholder = "Weight in Kg" required = "true" onblur="courierWeightCheck();" name = "courierWeight" onchange = "calculation()" 
					id ="courierWeight" 
					title="provide Weight in Kg"
					pattern="^[0-9]{1,4}$" />
				</div>
			</div>

			<div class="row">
				<div class="col-25">

					<label for="courierCost">Courier Cost</label>
</div>

					<div class="col-75">
						<form:input path="courierCost" required = "true" name = "courierCost" onchange = "calculation(this.form)"  
						/>
					</div>
				</div>


				<div class="row">
					<div class="col-25">

						<label for="source">Source </label>
					</div>
					<div class="col-75">
						<form:input path="source" required = "true" name="source" onblur="sourceCheck();" id="source"
						title="* please enter a from address"
						 />

					</div>
					<form:errors path="source" cssClass="text-danger" />
				</div>


				<div class="row">
					<div class="col-25">


						<label for="destination">Destination</label>
					</div>
					<div class="col-75">
						<form:input path="destination" required = "true"  name="destination" onblur="destinationCheck();" id="destination"
						 title="* please enter a to address"/>

					</div>
					<form:errors path="destination" cssClass="text-danger" />
				</div>

					<form:button class="btn" >Register</form:button>
		</form:form>
      
	</div>

</body>
</html>