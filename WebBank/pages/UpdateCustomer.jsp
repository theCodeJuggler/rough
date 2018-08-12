<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
<meta charset="ISO-8859-1">
<title>Update Customer Details</title>
</head>
<div class="navbar-fixed">
	<nav>
		<jsp:include page="headers.jsp"></jsp:include>
	</nav>
</div>
<style>
body {
	background-color: rgb(190, 150, 150);
	justify-content: space-between;
}
</style>


<body>
	<div class="container">
		<form method="get" action="updateAccount.AppController">
			<div style="align-content: center">
				<h1 class="center-align">Update Customer Details</h1>
				<table class="centered">
					<tr>
						<td>Customer ID:</td>
						<td><input type="text" name="customerid"
							value="${requestScope.account.accountHolder.customerId}" readonly></td>
						<td>Customer Name:</td>
						<td><input type="text" name="customerName"
							value="${requestScope.account.accountHolder.customerName}"></td>
						<td>Account Number:</td>

						<td><label>Browser Select</label><select
							class="browser-default" name="accNo">
								<option value="${requestScope.account.accountNumber}">${requestScope.account.accountNumber}</option>
						</select></td>
					</tr>
					<tr>
						<td>Mobile Number:</td>
						<td><input type="text" name="contactNumber"
							value="${requestScope.account.accountHolder.contactNumber}"
							pattern="^\d{10}"></td>
						<td>Email ID:</td>
						<td><input type="email" name="email"
							value="${requestScope.account.accountHolder.emailId}"></td>
						<td>Date of Birth:</td>
						<td><input type="date" name="dateOfBirth"
							value="${requestScope.account.accountHolder.dateOfBirth}"></td>
					</tr>
				</table><br><br>
				<div class="center-align">
					<button class="btn waves-effect waves-light btn-large"
						type="submit" value="Update Changes">
						Update Changes <i class="material-icons right">update</i>
					</button>
				</div>
			</div>
		</form>
	</div>

</body>
<jsp:include page="footers.jsp"></jsp:include>
</html>