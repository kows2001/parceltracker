<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@include file="/WEB-INF/views/css/customer-update-form.css"%>

 </style>
 <script type="text/javascript">
 var customerNameCheck = function() {
	 var nameRegex = new RegExp("^[A-Za-z]\\w{3,20}$");
	 if(!document.form.customerName.value.match(nameRegex)){
			if(alert("Name can't be empty or must contain only alphabets")){ 
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
	 if(document.form.gender.value == ""){
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
			if(alert("Email not valid")){
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
	 var phoneRg = new RegExp("[1-9]{1}[0-9]{9}");
	 if(!document.form.phoneNumber.value.match(phoneRg)){
			if(alert("Phone Number not valid")){
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
		var cityRegex = new RegExp("^[a-zA-Z][a-zA-Z\\s]+$");
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
		var cityRegex = new RegExp("^[a-zA-Z][a-zA-Z\\s]+$");
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
	


                   <h2>Get started with a free account</h2>
	            <div class ="container">
					<form:form action="customerupdate" method="Post"
						modelAttribute="updateCustomer" name="form">
						
							
								<div class="row">
							<div class="col-25">
						
							<label for="customerName"> Customer Name</label>
								</div>
									<div class="col-75">
										<form:input path="customerName" placeholder="Customer Name" title="Name length should be 3 to 20" 
										 pattern="^[A-Za-z]\\w{3,20}$" required="true"  onblur="customerNameCheck();" name="customerName" id="customerName"/>
									</div>
								<form:errors path="customerName" cssClass="text-danger" />
							</div>
						
						     <div class="row">
							<div class="col-25">
						
							
								<label for="gender">Select Gender</label>
								
									</div>
									<div class="col-75">

										
										<form:radiobutton path="gender" value="Male" />
										Male:
										<form:radiobutton path="gender" value="Female" />
										Female:
										<form:radiobutton path="gender" value="Transgender" />
										Transgender:
                                    </div>
							
							</div>
							
								 <div class="row">
							<div class="col-25">
							<label for="email">Email</label>
								</div>
									<div class="col-75">
										<form:input path="email"  placeholder="Email" title="Enter a valid email as abc@gmail.com" 
										 pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$" required="true" onblur="emailCheck();" id="email" name="email"/>
									</div>
								<form:errors path="email" cssClass="text-danger" />
							</div>
							
							
							<div class="row">
							<div class="col-25">
						<label for="phoneNumber">Phone Number</label>
							</div>
									<div class="col-75">
										<form:input path="phoneNumber" placeholder="Phone Number"
										title="phone number should have 10 digits"
					                	pattern="[1-9]{1}[0-9]{9}" onblur="phoneNumberCheck();"  id="phoneNumber" name="phoneNumber"/>
									</div>
								
							</div>
							<div class="row">
							<div class="col-25">
						<label for="city">City</label>
								</div>
							<div class="col-75">
										<form:input path="city" placeholder="City"
										title="City name can't be empty or must contain only alphabets"
					                	pattern="^[a-zA-Z]+$" onblur="cityCheck();"  id="city" name="city"/>	
							</div>
							</div>
							<div class="row">
							<div class="col-25">
						<label for="state">State</label>
								</div>
									<div class="col-75">
									<form:input path="state" placeholder="state"
										title="State name can't be empty or must contain only alphabets"
					                	pattern="^[a-zA-Z]+$" onblur="stateCheck();"  id="state" name="state"/>	
										
							</div>
							</div>
						    <div class="row">
							<form:button class ="btn">Save</form:button>
							
						</div>
					</form:form>
					
					</div>
					
					<div>
					${save}</div>
					
					
				
				

</body>
</html>