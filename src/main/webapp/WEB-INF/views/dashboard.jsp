<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Courier</title>
<style><%@include file="/WEB-INF/views/css/dashboard.css"%>
 </style>
 <link href='https://css.gg/arrow-left-o.css' rel='stylesheet'>
</head>
<body>


<form:form   modelAttribute="customerId" >
<div class="sidenav">
    

   <a   href="/customer/findcustomerbyid?customerId=${customerId}">Profile</a>
  <a   href="/courier/courierregister?customerId=${customerId}">Order</a>
  <a href="/courierstatus/trackingpage">Track Your Courier</a>
  <a href="/customercourier/getcustomercourierlist?customerId=${customerId}">Courier List</a>
  <a href="/customer/homePage" style="background-color: #033747;
    color: white;">
			<em class="gg-arrow-left-o"></em>
			
		</a>
</div>

</form:form>
<div class="img">
<img alt="" src="https://content3.jdmagicbox.com/comp/def_content_category/shree-maruti-12099438-f5irhin26c.jpg" width="1110px"  height="650px">
<div class="content">
<h2>With us, your parcels go Safe, Sure, and Swift</h2>
</div>
</div>
</body>
</html>