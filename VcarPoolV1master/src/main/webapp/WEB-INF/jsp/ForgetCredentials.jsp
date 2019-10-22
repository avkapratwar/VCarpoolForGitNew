<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
</head>
<link rel="stylesheet" type="text/css" href="css//bootstrap4moving.css">
<link rel="stylesheet" type="text/css" href="css/stylefoot.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript">
	function validateQuestion() {
		var question = document.getElementById("input").value;
		if (question == 0) {
			alert("Select Valid Question.");
			return false;
		}
		return true;
	}
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

<body>
	<!-- Navigation -->
	<nav
		class="navbar navbar-expand-lg navbar-light bg-light shadow fixed-top">
		<div class="container">

			<a class="navbar-brand" href="index.jsp">VCarPool</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="index.jsp"><b>Home</b> <span class="sr-only">(current)</span>
					</a></li>

				</ul>
			</div>
		</div>
	</nav>
	<center>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<form method="post" onsubmit="return validateQuestion()"
			action="ForgotCredentialsController.vcp">
			<table style="width: 220px; height: 40px;">
				<tr>
					<td><input type="number" name="employeeId"
						placeholder="Enter Employee ID" maxlength="7" pattern="[(+]*[0-9]{4-7}[()+. -]*"
							title="Employee id should not contain alphabets" required 
						style="font-size: 20px; padding: 5px; border: 2px solid white; border-radius: 04px; font-family: rk;"
						required /></td>
				</tr>

				<!--  Security Question -->

				<tr>
					<td><div>
							<select id="input" name="securityQuestion"
								style="width: 220px; height: 40px; border-radius: 04px; font-family: rk; border: 2px solid white; font-size: 20px;">
								<option value=0>Security Question</option>
								<option value="one">What was your School's Name?</option>
								<option value="two">What is your Pet's Name?</option>
								<option value="three">What is Math Teacher's Name?</option>
							</select>
						</div></td>
				</tr>

				<!--  Security Answers -->

				<tr>
					<td><input type="text" name="securityAnswer"
						placeholder="Answer"
						style="font-size: 20px; padding: 5px; border: 2px solid white; border-radius: 04px; font-family: rk;"
						required /></td>
				</tr>
				<tr>
					<td style="height: 20px;"></td>
				</tr>
				<tr>
					<td><input type="submit" value="submit"
						style="font-size: 20px; font-family: rk;" /><input type="reset"
						value="Clear" style="font-size: 20px; font-family: rk;" /></td>
				</tr>
				<tr>
					<td style="height: 10px;"></td>
				</tr>
				<tr>
					<td><a href="login.vcp"><button type="button"
								style="font-size: 20px; font-family: rk;">Login Here.</button></a></td>
				</tr>
			</table>

		</form>
	</center>
</body>
</html>