<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- Compiled and minified JavaScript -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>

<script>  $(document).ready(function(){
    $('.tooltipped').tooltip();
});</script>
<meta charset="ISO-8859-1">
<title>Account Details</title>
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
	<div style="align: center;">
		<h1  class="center-align">Customer Details</h1>
		<jstl:if test="${requestScope.allAccount.size() > 0 }">
			<table class="striped">
				<tr>
					<th>Customer ID</th>
					<th>Customer Name</th>
					<th>Account Number</th>
					<th>Email ID</th>
					<th>Phone No</th>
					<th>Date Of Birth</th>
				</tr>
				<jstl:forEach var="account" items="${requestScope.allAccount}">
					<tr>
						<td>${account.accountHolder.customerId}</td>
						<td>${account.accountHolder.customerName}</td>
						<td>${account.accountNumber}</td>
						<td>${account.accountHolder.emailId}</td>
						<td>${account.accountHolder.contactNumber}</td>
						<td>${account.accountHolder.dateOfBirth}</td>
						<td>
						<a href="editform.AppController?accountNo=${account.accountNumber}" class="btn-floating tooltipped btn-small waves-effect waves-light red" data-position="bottom" data-tooltip="Update"><i class="material-icons" style="font-size: 20px">update</i></a>
						
					</tr>
				</jstl:forEach>
			</table>

		</jstl:if>
		<jstl:if test="${requestScope.allAccount.size() == 0 }">
			<h4 class="center-align">No Customer Found!</h4>
		</jstl:if>
	</div>
<div>
	</div>
	</div>
</body>
<jsp:include page="footers.jsp"></jsp:include>
</html>