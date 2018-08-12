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
<title>Withdrawal</title>
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
}</style>

<body>
<div class="container">
<form action="doWithdraw.AppController" method="get">

	<div style="align-content: center">
		<h1  class="center-align">Withdrawal</h1>
		<table class="striped">
		<tr>
		<td>Enter Account number</td>
		<td><input type="text" name="accNo"></td>
		<td>Enter Amount</td>
		<td><input type="text" name="amount" placeholder="0.0"></td>
		</tr>
		</table><br><br>
		<div class="center-align"><button class="btn waves-effect waves-light btn-large" type="submit" value="Deposit">Withdrawal     <i class="material-icons right">send</i></button></div>
	</div>
</form>
</div>
</body>
<jsp:include page="footers.jsp"></jsp:include>
</html>