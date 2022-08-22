<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Courierr</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>

<style><%@include file="/WEB-INF/views/css/courierstatusadd.css"%>

 </style>
<script>

var courierStatusCheck = function() {
	 var statusRegex = new RegExp("^[A-Za-z]+$");
	 if(!document.form.courierStatus.value.match(statusRegex)){
		 
			if(alert("* please enter only alphabets")){ 
				 document.form.courierStatus.focus();
		    }
			else
				document.activeElement.blur();
		}
   else{
       return false;
   } 
  
}
var currentPlaceCheck = function() {
	 var placeRegex = new RegExp("^[A-Za-z]+$");
	 if(!document.form.currentPlace.value.match(placeRegex)){
		 
			if(alert("* please enter only alphabets")){ 
				 document.form.currentPlace.focus();
		    }
			else
				document.activeElement.blur();
		}
  else{
      return false;
  } 
 
}
var  checkDate = function() {
	
	 if(document.form.statusUpdateDate.value == ""){
		 
			if(alert("* please enter time")){ 
				 document.form.statusUpdateDate.focus();
		    }
			else
				document.activeElement.blur();
		}
 else{
     return false;
 } 

}
var  inTimeCheck = function() {
	
	 if(document.form.checkInTime.value == ""){
		 
			if(alert("* please enter time")){ 
				 document.form.checkInTime.focus();
		    }
			else
				document.activeElement.blur();
		}
else{
    return false;
} 

}
var  outTimeCheck = function() {
	
	 if(document.form.checkOutTime.value == ""){
		 
			if(alert("* please enter time")){ 
				 document.form.checkOutTime.focus();
		    }
			else
				document.activeElement.blur();
		}
else{
    return false;
} 

}



</script>
</head>
<body>
  <div class="btn1">
			<button style="background-color: #033747;
    color: white;" onclick="history.back()"><em class="gg-arrow-left-o"></em></button>
		</div>
   <div class = "center">
   <h1> Courier Status Update</h1>
		<div class ="container">
			<form:form action="courierStatusAdd" method="post" modelAttribute="addstatus" name="form">
				<div class="row">
							<div class="col-1">
					<label for="courierReferenceNo">Courier ReferenceNo</label>
					</div>
					<div class="col-2">
						<form:input path="courierReferenceNo" readonly="true"  />
					</div>
				</div>
				<div class="row">
							<div class="col-1">
					<label for="status">Courier Status</label>
					</div>
					<div class="col-2">
						<form:input path="status" title="* please enter only alphabets" 
						pattern="^[A-Za-z]+$"  required="true"  onblur="courierStatusCheck();"  name="courierStatus" id="courierStatus"/>
					</div>
				</div>
				<div class="row">
							<div class="col-1">
					<label for="statusUpdateDate">Status UpdateDate</label>
					</div>
					<div class="col-2">
						<form:input path="statusUpdateDate" type = "date" onblur="checkDate();" name="statusUpdateDate" id="statusUpdateDate" required="true" />
						
					</div>
				</div>
				<div class="row">
							<div class="col-1">
					<label for="currentPlace">Current Place</label>
					</div>
					<div class="col-2">
						<form:input path="currentPlace" required= "true"  onblur="currentPlaceCheck();"
						title="Please enter only alphabets" pattern="^[A-Za-z]+$" name="currentPlace" id="currentPlace"/>
					</div>
				</div>
				<div class="row">
							<div class="col-1">
					<label for="checkInTime">Check In Time</label>
					</div>
					<div class="col-2">
						<form:input path="checkInTime"  type="time" required="true" onblur="inTimeCheck();" name="checkInTime" id="checkInTime"/>
					</div>
				</div>
				<div class="row">
							<div class="col-1">
					<label for="checkOutTime">Check Out Time</label>
					</div>
					<div class="col-2">
						<form:input path="checkOutTime" type="time" required="true" onblur="outTimeCheck();" name="checkOutTime" id="checkOutTime"/>
					</div>
				</div>
				
				
				<form:button class="btn"> Update </form:button>
			</form:form>
		</div>
	</div>
	
	
</body>
</html>