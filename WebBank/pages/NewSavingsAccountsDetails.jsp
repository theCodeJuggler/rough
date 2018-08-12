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
<form method="get" action="createSavingsAccount.AppController">
	<div align="center">
		<table class="striped">
			<tr>
				<td>Enter Customer Name:</td>
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
				<td>Will this be a salary<br>account?</td>
				<td><label><input type="radio" class="with-gap" name="salaried" value="true" checked><span><h7 style="color:black;">Yes</h7></span></label></td>
				<td><label><input type="radio" class="with-gap" name="salaried" value="false"><span><h7 style="color:black;">No</h7></span></label></td>
				<td></td>
			</tr>
			<tr>
				<!-- (Min. Opening Bal must be Rs.5000, if not salaried) -->
				<td>Enter the initial balance<br>(Minimum Rs.5000.00 if<br>not salaried)</td>
				<td><input type="text" name="balance" placeholder="RS."></td>
				<td></td><td></td>
			</tr>
			<tr><td></td>
			<td><button class="btn waves-effect waves-light btn-large" type="submit" value="Create Account">Create Account<i class="material-icons right">send</i></button></td>
			<td><button class="btn waves-effect waves-light btn-large"type="reset" value="Reset Fields">Reset   <i class="material-icons right">cancel</i></button></td>
			<td></td>
			</tr>
		</table>
	</div>
</form>
</div>
</body>
<jsp:include page="footers.jsp"></jsp:include>
</html>