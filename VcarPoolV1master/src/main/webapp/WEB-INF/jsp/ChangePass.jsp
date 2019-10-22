<%@page import="com.virtusa.vcarpoool.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css//bootstrap4moving.css">
<link rel="stylesheet" type="text/css" href="css/stylefoot.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<script type="text/javascript">
	function preventBack() {
		window.history.forward();
	}
	setTimeout("preventBack()", 0);
	window.onunload = function() {
		null
	};
</script>
<style>
body {
	background-image: url("Carpool_Image2.jpg");
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-color: #cccccc;
}
</style>
<script type="text/javascript">
	function validateConPass() {
		var newPsw = document.getElementById('input1').value;
		var cnfPsw = document.getElementById('input2').value;
		if (newPsw == cnfPsw) {
			return true;
		} else {
			alert("New password and confirm password should be match.");
			return false;
		}
	}
</script>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-light bg-light shadow fixed-top">
		<div class="container">

			<a class="navbar-brand" href="#">VCarPool</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="Login.jsp">Home <span class="sr-only">(current)</span>
					</a></li>

				</ul>
			</div>
		</div>
	</nav>
	<%
		Employee employee = (Employee) request.getAttribute("EmpDetails");
	%>

	<center>
		<form method="post" onsubmit="return validateConPass()"
			action="UpdatePassController.vcp">
			<table>
				<br>
				<br>
				<br>
				<tr>
					<th>New Password:</th>
					<td><br> <input type="password" id="input1" name="newpwd"
						placeholder="New Password"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						required></td>
				</tr>
				<br>
				<tr>
					<td><input type="hidden" name="Employeeid"
						value=<%=employee.getEmployeeId()%>></td>
				</tr>
				<tr>
					<th>Confirm Password:</th>
					<td><br> <input type="password" id="input2" name="cnfpwd"
						placeholder="Confirm Password"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						required></td>
				</tr>
				<br>
				<br>
				<tr>
					<td style="height: 20px;"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Save" /><input type="reset"
						value="Refresh"></td>
				</tr>
			</table>
		</form>
	</center>

</body>
</html>