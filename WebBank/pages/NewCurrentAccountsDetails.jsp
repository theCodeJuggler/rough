<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
    background-color: rgb(190,150,150);
}
</style>
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
<meta charset="ISO-8859-1">
<title>Add a savings account</title>
</head>
<div class="navbar-fixed">
    <nav>
<jsp:include page="headers.jsp"></jsp:include>
</nav></div>
<body>
<div>
    <h5 class="center-align">Enter Account Details</h5>
 </div>
<div class="container">
<form method="get" action="createCurrentAccount.AppController">
	<div align="center">
		<table class="striped">
			<tr>
				<td >Enter Customer Name:</td>
				<td><input type="text" name="customerName"></td>
				<td >Enter Mobile Number:</td>
				<td><input type="text" name="contactNumber" pattern="^\d{10}"></td>
			</tr>
			<tr >
				<td >Enter Email ID:</td>
				<td><input type="email" name="email"></td>
				<td >Enter Date of Birth:</td>
				<td><input type="date" name="dateOfBirth"></td>
			</tr>
			<tr>
				<td >Enter Address:</td>
				<td><input type="text" name="address"></td>
				<td >Enter Nationality:</td>
				<td><input type="text" name="nationality"></td>
			</tr>
			<tr>
				<td>Gender</td>
				<td><label><input type="radio" class="with-gap" name="gender" value="Male" checked><span><h7 style="color:black;">Male</h7></span></label></td>
				<td><label><input type="radio" class="with-gap" name="gender" value="Female"><span><h7 style="color:black;">Female</h7></span></label></td>
				<td></td>
			</tr>
			<tr>
				<td>Enter overdraft limit</td>
				<td><input type="text" name="overdraft"></td>
				<td></td> <td></td>
			</tr>
			<tr>
				<td>Enter the initial balance<br>(Minimum Balance Rs. 10,000.00)</td>
				<td><input type="text" name="balance" placeholder="Rs."></td>
				<td></td>
			</tr>
			<tr><td></td>
			<td><button class="btn waves-effect waves-light btn-large" type="submit" value="Create Account">Create Current Account<i class="material-icons right">send</i></button></td>
			<td><button class="btn waves-effect waves-light btn-large"type="reset" value="Reset Fields">Reset   <i class="material-icons right">cancel</i></button></td>
			</tr>
		</table>
	</div>
</form>
</div>
</body>
<jsp:include page="footers.jsp"></jsp:include>
</html>