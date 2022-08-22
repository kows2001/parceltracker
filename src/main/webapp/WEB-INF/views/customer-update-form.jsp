<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
<style><%@include file="/WEB-INF/views/css/customer-update-form.css"%>

 </style>
 <script type="text/javascript">        
 var customerNameCheck = function() {
	 var nameRegex = new RegExp("^[a-zA-Z\\s]{3,20}$");
	 if(!document.form.customerName.value.match(nameRegex)){
			if(alert("Name can't be empty or must contain only alphabets ")){ 
				 document.form.customerName.focus();
		    }
			else
				document.activeElement.blur();
		}
    else{
        return false;
    } 
   
}
 var gender = function() {
	 if(!document.form.gender.value == ""){
			if(alert("Gender cannot be blank")){ 
				 document.form.gender.focus();
		    }
			else
				document.activeElement.blur();
		}
	 else{
	    	return false;
	    }
 }
 var emailCheck = function() {
		var rg = new RegExp("^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$");
		if(!document.form.email.value.match(rg)){
			if(alert("please Enter a valid email as abc@gmail.com")){
				document.form.email.focus();
			}
			else
				document.activeElement.blur();
		}
	    else{
	    	return false;
	    }
	}
 var passwordCheck = function() {
		var rg = new RegExp("^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$");
		if(!document.form.password.value.match(rg)){
			if(alert("password must begin with letter and contain atleast one number and must have atleast 8 characters")){
				document.form.password.focus();
			}
			else
				document.activeElement.blur();
		}
	    else{
	    	return false;
	    }
	}
 var phoneNumberCheck = function() {
	 var phoneRg = new RegExp("^[6-9]{1}[0-9]{9}$");
	 if(!document.form.phoneNumber.value.match(phoneRg)){
			if(alert("please enter valid phone number")){
				 document.form.phoneNumber.focus();
			}
			else
				document.activeElement.blur();
		}
    else{
    	return false;
    }
} 
 var cityCheck = function() {
		var cityRegex = new RegExp("^[a-zA-Z\\s]*$");
		if(!document.form.city.value.match(cityRegex)){
			if(alert("City name can't be empty or must contain only alphabets")){
				 document.form.city.focus();
			}
			else
				document.activeElement.blur();
		}
		else{
	    	return false;
	    }
	}
 var stateCheck = function() {
		var cityRegex = new RegExp("^[a-zA-Z\\s]*$");
		if(!document.form.state.value.match(cityRegex)){
			if(alert(" State can't be empty or must contain only alphabets")){
				 document.form.state.focus();
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
<body >    
             
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
	
 
	
               	<h2 id ="save">
					${save}</h2> 
					

 <div class ="container">
					<form:form action="customerupdate" method="Post"
						modelAttribute="updateCustomer" name="form">
						
							
				<div class="row">
					<div class="col-25">
						<label for="customerId">CustomerId</label>
					</div>
					<div class="col-75">
						<form:input path="customerId" readonly="true"/>
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="dateOfJoining">Date Of Joining</label>
					</div>
					<div class="col-75">
						<form:input path="dateOfJoining" readonly="true"/>
					</div>
				</div>
								<div class="row">
							<div class="col-25">
						
							<label for="customerName"> Customer Name</label>
								</div>
									<div class="col-75">
										<form:input path="customerName" placeholder="Customer Name"  required="true"  onblur="customerNameCheck();" 
										 title="*Name length should be 3 to 20 and enter only alphabets" 
										 pattern="^[a-zA-Z\\s]{3,20}$" name="customerName" id="customerName"/>
									</div>
								<form:errors path="customerName" cssClass="text-danger"  />
							</div>
						
						     <div class="row">
							<div class="col-25">
						
							
								<label for="gender">Select Gender</label>
								
									</div>
									<div class="col-75">

										
										<form:radiobutton path="gender" value="Male" />
										Male
										<form:radiobutton path="gender" value="Female" />
										Female
										<form:radiobutton path="gender" value="Transgender" />
										Transgender
                                    </div>
							
							</div>
							
								 <div class="row">
							<div class="col-25">
							<label for="email">Email</label>
								</div>
									<div class="col-75">
										<form:input path="email"  placeholder="Email" title="* please Enter a valid email as abc@gmail.com" 
										 pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$" required="true" onblur="emailCheck();" id="email" name="email"/>
									</div>
								<form:errors path="email" cssClass="text-danger" />
							</div>
							  <div class="row">
							<div class="col-25">
							
					<label for="password">Password</label>
					</div>
									<div class="col-75">
										<form:input path="password"  type="password" 
										title="password must begin with letter and contain atleast one number and must have atleast 8 characters"
										pattern="^(?=.*[A-Za-z])(?=.*\\d)(?=.*[@$!%*#?&])[A-Za-z\\d@$!%*#?&]{8,}$"
										 placeholder="password" onblur="passwordCheck();"  id="password" name="password"/>
									</div>
									</div>
							
							<div class="row">
							<div class="col-25">
						<label for="phoneNumber">Phone Number</label>
							</div>
									<div class="col-75">
										<form:input path="phoneNumber" placeholder="Phone Number"
										title="*please enter valid phone number"
					                	pattern="^[6-9]{1}[0-9]{9}$" onblur="phoneNumberCheck();"  id="phoneNumber" name="phoneNumber" required="true"/>
									</div>
								
							</div>
							<div class="row">
							<div class="col-25">
						<label for="city">City</label>
								</div>
							<div class="col-75">
										<form:input path="city" placeholder="City"
										title="City name can't be empty or must contain only alphabets"
					                	pattern="^[a-zA-Z\\s]*$" onblur="cityCheck();"  id="city" name="city"/>	
							</div>
							</div>
							<div class="row">
							<div class="col-25">
						<label for="state">State</label>
								</div>
									<div class="col-75">
									<form:input path="state" placeholder="state"
										title="State name can't be empty or must contain only alphabets"
					                	pattern="^[a-zA-Z\\s]*$" onblur="stateCheck();"  id="state" name="state"/>	
										
							</div>
							</div>
						    <div class="row">
							<form:button class ="btn">Save</form:button>
							
						</div>
					</form:form>
					
					</div>
					
				
					
				
				

</body>
</html>