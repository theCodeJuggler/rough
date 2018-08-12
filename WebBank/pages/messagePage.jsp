<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>Message</title>
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
<form action="index.jsp" method="get">
	<h2 class="center-align">${requestScope.message}</h2><br>
<br><br>
<button class="btn waves-effect waves-light btn-large"
						type="submit" value="Go Back Home">
						Go Back Home <i class="material-icons right">home</i>
					</button></div></form>
</body>
<jsp:include page="footers.jsp"></jsp:include>
</html>