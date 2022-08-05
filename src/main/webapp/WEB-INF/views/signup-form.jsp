<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: skyblue;">
	<h2 align="center">Get started with a free account</h2>
	<div id="root">
		<div id="form">
			<div align="center">
				<table border="" width=50% cellpadding="10">
					<form:form action="newcustomer" method="post"
						modelAttribute="newcus">
						<tr>
							<div>
								<td><label for="customerId">CustomerId</label></td>
								<td>
									<div>
										<form:input path="customerId" />
									</div>
								</td></div>
						</tr>
						<tr>
							<div>
								<td><label for="customerName"> Customer Name</label></td>
								<td>
									<div>
										<form:input path="customerName" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="gender">Select Gender</label></td>
								<td>
									<div>

										Male:
										<form:radiobutton path="gender" value="Male" />
										Female:
										<form:radiobutton path="gender" value="Female" />
										Transgender:
										<form:radiobutton path="gender" value="Transgender" />
                                    </div>
								</td>
							</div>
						</tr>
						<tr>

							<div>
								<td><label for="dateOfJoining">Date Of Joining</label></td>
								<td>
									<div>
										<form:input path="dateOfJoining" type="date" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="email">Email</label></td>
								<td>
									<div>
										<form:input path="email" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="password">Password</label></td>
								<td>
									<div>
										<form:input path="password" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="phoneNumber">Phone Number</label></td>
								<td>
									<div>
										<form:input path="phoneNumber" />
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<div>
								<td><label for="city">city</label></td>
								<td>
									<div>
										<form:select path="city">
											<form:option value="Ariyalur">Ariyalur</form:option>
											<form:option value="Chengalpattu">Chengalpattu</form:option>
											<form:option value="Chennai">Chennai</form:option>
											<form:option value="Coimbatore">Coimbatore</form:option>
											<form:option value="Cuddalore">Cuddalore</form:option>
											<form:option value="Dharmapuri">Dharmapuri</form:option>
											<form:option value="Dindigul">Dindigul</form:option>
											<form:option value="Erode">Erode</form:option>
											<form:option value="Kallakurichi">Kallakurichi</form:option>
											<form:option value="Kanchipuram">Kanchipuram</form:option>
											<form:option value="Kanyakumari">Kanyakumari</form:option>
											<form:option value="Karur">Karur</form:option>
											<form:option value="Krishnagiri">Krishnagiri</form:option>
											<form:option value="Madurai">Madurai</form:option>
											<form:option value="Nagapattinam">Nagapattinam</form:option>
											<form:option value="Namakkal">Namakkal</form:option>
											<form:option value="Nilgiris">Nilgiris</form:option>
											<form:option value="Perambalur">Perambalur</form:option>
											<form:option value="Pudukkottai">Pudukkottai</form:option>
											<form:option value="Ramanathapuram">Ramanathapuram</form:option>
											<form:option value="Ranipet">Ranipet</form:option>
											<form:option value="Salem">Salem</form:option>
											<form:option value="Sivaganga">Sivaganga</form:option>
											<form:option value="Tenkasi">Tenkasi</form:option>
											<form:option value="Thanjavur">Thanjavur</form:option>
											<form:option value="Theni">Theni</form:option>
											<form:option value="Thoothukudi">Thoothukudi</form:option>
											<form:option value="Tiruchirappalli">Tiruchirappalli</form:option>
											<form:option value="Tirunelveli">Tirunelveli</form:option>
											<form:option value="Tirupathur">Tirupathur</form:option>
											<form:option value="Tiruppur">Tiruppur</form:option>
											<form:option value="Tiruvallur">Tiruppur</form:option>
											<form:option value="Tiruvannamalai">Tiruvannamalai</form:option>
											<form:option value="Tiruvarur">Tiruvarur</form:option>
											<form:option value="Vellore">Vellore</form:option>
											<form:option value="Viluppuram">Viluppuram</form:option>
											<form:option value="Virudhunagar">Virudhunagar</form:option>
										</form:select>

									</div>
								</td>
							</div>
						</tr>
						<tr>

							<div>
								<td><label for="state">state</label></td>
								<td>
									<div>
										<form:select path="state">
											<form:option value="Andhra Pradesh">Andhra Pradesh</form:option>
											<form:option value="Andaman and Nicobar Islands">Andaman and
							Nicobar Islands</form:option>
											<form:option value="Arunachal Pradesh">Arunachal Pradesh</form:option>
											<form:option value="Assam">Assam</form:option>
											<form:option value="Bihar">Bihar</form:option>
											<form:option value="Chandigarh">Chandigarh</form:option>
											<form:option value="Chhattisgarh">Chhattisgarh</form:option>
											<form:option value="Dadar and Nagar Haveli">Dadar and Nagar
							Haveli</form:option>
											<form:option value="Daman and Diu">Daman and Diu</form:option>
											<form:option value="Delhi">Delhi</form:option>
											<form:option value="Lakshadweep">Lakshadweep</form:option>
											<form:option value="Puducherry">Puducherry</form:option>
											<form:option value="Goa">Goa</form:option>
											<form:option value="Gujarat">Gujarat</form:option>
											<form:option value="Haryana">Haryana</form:option>
											<form:option value="Himachal Pradesh">Himachal Pradesh</form:option>
											<form:option value="Jammu and Kashmir">Jammu and Kashmir</form:option>
											<form:option value="Jharkhand">Jharkhand</form:option>
											<form:option value="Karnataka">Karnataka</form:option>
											<form:option value="Kerala">Kerala</form:option>
											<form:option value="Madhya Pradesh">Madhya Pradesh</form:option>
											<form:option value="Maharashtra">Maharashtra</form:option>
											<form:option value="Manipur">Manipur</form:option>
											<form:option value="Meghalaya">Meghalaya</form:option>
											<form:option value="Mizoram">Mizoram</form:option>
											<form:option value="Nagaland">Nagaland</form:option>
											<form:option value="Odisha">Odisha</form:option>
											<form:option value="Punjab">Punjab</form:option>
											<form:option value="Rajasthan">Rajasthan</form:option>
											<form:option value="Sikkim">Sikkim</form:option>
											<form:option value="Tamil Nadu">Tamil Nadu</form:option>
											<form:option value="Telangana">Telangana</form:option>
											<form:option value="Tripura">Tripura</form:option>
											<form:option value="Uttar Pradesh">Uttar Pradesh</form:option>
											<form:option value="Uttarakhand">Uttarakhand</form:option>
											<form:option value="West Bengal">West Bengal</form:option>
										</form:select>
									</div>
								</td>
							</div>
						</tr>
						<tr>
							<form:button>SignUp</form:button>
							</td>
						</tr>
					</form:form>
				</table>
			</div>
		</div>

</body>
</html>