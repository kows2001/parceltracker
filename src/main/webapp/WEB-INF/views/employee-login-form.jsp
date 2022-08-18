<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@include file="/WEB-INF/views/css/employee-login-form.css"%>

 </style>
 <script type="text/javascript">
 
 var employeePasswordCheck = function() {
	 if(!document.form.employeePassword.value==" "){
			if(alert("* please enter valid  password")){ 
				 document.form.employeePassword.focus();
		    }
			else
				document.activeElement.blur();
		}
    else{
        return false;
    } 
   
}
 var employeeRoleNameCheck = function() {
	 var nameRegex = new RegExp("^[A-Za-z]\\w{3,20}$");
	 if(!document.form.employeeName.value.match(nameRegex)){
			if(alert("Name can't be empty or must contain only alphabets")){ 
				 document.form.employeeName.focus();
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
<body class = "container">
	
		<div class="sidenav">
		<div class="img">
		<img alt="" src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/2048px-Circle-icons-profile.svg.png" width="200px" height="200px">
		</div>
		<h2>Welcome To Admin Panel!</h2>
		</div>
		<div class = "container">
		<div class = "form">
		<form:form action="check" method="post" modelAttribute="admin" name = "form">
			<div class="row">
				<div class="col-1">

					<label for="employeeRole">Employee Role</label>
				</div>
				<div class="col-2">
					<form:input path="employeeRole" placeholder="Employee Role"
					title="Name sould be in alphabets" 
					pattern="^[a-zA-Z]+(\s[a-zA-Z]+)?$"  required = "true" id="employeeRole" onblur="employeeRoleNameCheck();"/>
					<form:errors path="employeeRole" cssClass="text-danger" />
				</div>
			</div>
			<div class="row">
				<div class="col-1">
					<label for="employeeName">Employee Name</label>
				</div>
				<div class="col-2">
					<form:input path="employeeName" placeholder="Employee Name" 
					title="Name sould be in alphabets" 
					pattern="^[a-zA-Z]+(\s[a-zA-Z]+)?$" required = "true" onblur="employeeRoleNameCheck();"/>
					<form:errors path="employeeName" cssClass="text-danger" />
				</div>
			</div>
			<div class="row">
				<div class="col-1">
					<label for="employeePassword">Password</label>
				</div>
				<div class="col-2">
					<form:input path="employeePassword" placeholder="Password"
					title = "At least 1 alphabet At least 1 digit Contains no space Optional special characters e.g. @$!%*#?&^_-Minimum 8 characters long"
				        	pattern="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*\W)(?!.* ).{8,16}$" type="password"  required = "true" onblur="employeePasswordCheck();"/>
				        	<form:errors path="employeePassword" cssClass="text-danger" />
				</div>
			</div>
			
			<form:button class="btn">Admin Login</form:button>
		</form:form>
        </div>
	</div>
</body>
</html>