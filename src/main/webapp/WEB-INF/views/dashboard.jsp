<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Courier</title>
</head>
<body>

<style><%@include file="/WEB-INF/views/css/dashboard.css"%>

 </style>
<form:form   modelAttribute="customerId" >
<div class="sidenav">


   <a   href="/customer/findcustomerbyid?customerId=${customerId}">Profile</a>
  <a   href="/courier/courierregister?customerId=${customerId}">Order</a>
  <a href="/courierstatus/trackingpage">Track Your Courier</a>
  <a href="/customercourier/getcustomercourierlist?customerId=${customerId}">Courier List</a>
</div>

</form:form>

</body>
</html>