<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer Login</title>

<style><%@include file="/WEB-INF/views/css/customerlogin.css"%>

 </style>
 
 <script type="text/javascript">
 var emailCheck = function() {
	 var nameRegex = new RegExp("^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$");
	 if(!document.form.email.value.match(nameRegex)){
			if(alert("Enter a valid email as abc@gmail.com")){ 
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
	 if(!document.form.email.value==""){
			if(alert("* please enter valid password")){ 
				 document.form.email.focus();
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
	
	
     
  
    
                             
       <div>
		 <h1> Fastest, safest and best delivery for your goods</h1>   
		
	</div>	                       
	
	
	<div class="container">

		<form:form action="checkcustomerlogin" method="post"
			modelAttribute="customer" name="form">

			<div class="row">
				<div class="col-1">
					<label for="email" >Email</label>
				</div>

				<div class="col-2">
					<form:input path="email" placeholder="Email" 
					title="Enter a valid email as abc@gmail.com" 
					 pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$" id="email" onblur="emailCheck();" name="email"/>
				</div>

			</div>

			<div class="row">
				<div class="col-1">

					<label for="password">Password</label>
					</div>
					
						<div class="col-2">
							<form:input path="password" placeholder="password" 
							title = "* please enter password" type="password"
				        	 required = "true" id="password" onblur="passwordCheck();" name="password"/>
						</div>
					
				</div>
				
				<form:button class="btn1"> Login </form:button>
		</form:form>
		
		
		<div  class="btn2">
			<label> Don't have an account</label> <a href="signupform"> <input
				onclick="change()" type="button" value="Sign Up"></input>
			</a>
		</div>
			<div class="result">
		${result}
		
		</div>
	
	
	</div>
	
</body>
</html>