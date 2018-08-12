<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.card-image{
    height: 400px; /* Your height here */
    width:100px
    overflow: hidden;
}
body {
    background-color: rgb(100,20,20);
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
<title>MoneyMoneyBankApplication</title>
</head>
<div class="navbar-fixed">
    <nav>
<jsp:include page="headers.jsp"></jsp:include>
</nav></div>
<body>
<div class="container">
<table>
<tr>
<td>

  <div class="card small">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="images/saving.jpg"    >
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">Savings Account<i class="material-icons right">more_vert</i></span>
      <p><a href="addSavings.AppController">Create New Savings Account</a></p>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Savings Account<i class="material-icons right">close</i></span>
      <p>Hassle free savings account at a click of a button</p>
    </div>
    </div>

</td>

<td>

  <div class="card small">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="images/current.png"     >
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">Current Account<i class="material-icons right">more_vert</i></span>
      <p><a href="addCurrent.AppController">Create New Current Account</a></p>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Current Account<i class="material-icons right">close</i></span>
      <p>Hassle free current account at a click of a button</p>
    </div>
    </div>
</td>
</tr>

<tr>
<td>

  <div class="card small">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="images/all_accounts.jpg"  >
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">All Accounts<i class="material-icons right">more_vert</i></span>
      <p><a href="viewAll.AppController">View All Accounts</a></p>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">All Accounts<i class="material-icons right">close</i></span>
      <p>View all the account holders</p>
    </div>
    </div>

</td>

<td>
  <div class="card small">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="images/customer.png"   >
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">View All Customer<i class="material-icons right">more_vert</i></span>
      <p><a href="viewCustomers.AppController">View All Customers</a></p>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">All Customers<i class="material-icons right">close</i></span>
      <p>Take a look at all the customers in our bank!</p>
    </div>
    </div>
</td>
</tr>

<tr>
<td>

  <div class="card small">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="images/search.png"    >
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">Search an account<i class="material-icons right">more_vert</i></span>
      <p><a href="createSearch.AppController">SearchAccount</a></p>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Search an Account<i class="material-icons right">close</i></span>
      <p>Hassle free searching of account at a click of a button</p>
    </div>
    </div>

</td>

<td>

  <div class="card small">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="images/withdraw.jpg"  >
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">Withdraw Amount<i class="material-icons right">more_vert</i></span>
      <p><a href="withdrawl.AppController">Withdraw amount from account</a></p>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Withdraw Amount<i class="material-icons right">close</i></span>
      <p>Withdraw money from your account</p>
    </div>
    </div>
</td>
</tr>

<tr>
<td>

  <div class="card small">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="images/deposit.jpg"  >
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">Deposit Amount<i class="material-icons right">more_vert</i></span>
      <p><a href="deposit.AppController">Deposit amount to account</a></p>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Deposit Amount<i class="material-icons right">close</i></span>
      <p>Deposit Amount to your account with a click of a button</p>
    </div>
    </div>

</td>

<td>
  <div class="card small">
    <div class="card-image waves-effect waves-block waves-light">
      <img class="activator" src="images/fundtransfer.jpg" >
    </div>
    <div class="card-content">
      <span class="card-title activator grey-text text-darken-4">Fund Transfer<i class="material-icons right">more_vert</i></span>
      <p><a href="fundTransfer.AppController">Transfer Funds</a></p>
    </div>
    <div class="card-reveal">
      <span class="card-title grey-text text-darken-4">Fund Transfer<i class="material-icons right">close</i></span>
      <p>Transfer fund from an account to another instantly, without any hassle</p>
    </div>
    </div>
</td>
</tr>

</table>
</div>
</body>
<jsp:include page="footers.jsp"></jsp:include>
</html>