<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css//bootstrap4moving.css">
<link rel="stylesheet" type="text/css" href="css/stylefoot.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- Navigation -->
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
					href="HomePage.jsp"><b>Home</b> <span class="sr-only">(current)</span>
				</a></li>

			</ul>
		</div>
	</div>
</nav>
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
	function validateGender() {
		var gender = document.getElementById("input1").value;
		if (gender == 0) {
			alert("Select Gender.");
			return false;
		}
		return true;
	}

	function validateQuestion() {
		var question = document.getElementById("input2").value;
		if (question == 0) {
			alert("Select Question.");
			return false;
		}
		return true;
	}
</script>
<style>
@font-face {
	font-family: rk;
	src: url("other/ttf/UberMove-Medium.TTF");
}

body {
	background-size: 100% 100%;
	background-repeat: no-repeat;
	margin: 0;
}

.title {
	margin: 0;
	top: 40%;
	left: 15%;
	text-align: center;
	font-size: 120px;
	font-weight: bolder;
	position: absolute;
	font-family: rk;
	text-shadow: -1px 1px 14px #101010;
}
/* -----------Register-----------------*/
.reg {
	background-color:;
	width: 120%;
	padding: 10px;
	color: white;
	font-family: rk;
	position: absolute;
	top: 10%;;
	right: 10%;
	border-radius: 04px;
	font-size: 20px;
	opacity: 2;
}

.reg center table tr td input[type=number] {
	font-size: 20px;
	padding: 5px;
	border: 2px solid white;
	border-radius: 04px;
	font-family: rk;
}

.reg center table tr td input[type=text] {
	font-size: 20px;
	padding: 5px;
	border: 2px solid white;
	border-radius: 04px;
	font-family: rk;
}

.reg center table tr td input[type=email] {
	font-size: 20px;
	padding: 5px;
	border: 2px solid white;
	border-radius: 04px;
	font-family: rk;
}

.reg center table tr td input[type=tel] {
	font-size: 20px;
	padding: 5px;
	border: 2px solid white;
	border-radius: 04px;
	font-family: rk;
}

.reg center table tr td input[type=password] {
	font-size: 20px;
	padding: 5px;
	border: 2px solid white;
	border-radius: 04px;
	font-family: rk;
}

.reg center table tr td input[type=submit] {
	font-size: 20px;
	padding: 5px;
	margin-top: 10px;
	border: 2px solid white;
	background-color: #03A9F4;
	border-radius: 02px;
	color: white;
	width: 48%;
	margin: 4px;
}

.reg center table tr td input[type=reset] {
	font-size: 20px;
	padding: 5px;
	margin-top: 10px;
	border: 2px solid white;
	background-color: #03A9F4;
	border-radius: 02px;
	color: white;
	width: 48%;
}

.reg center table tr td input[type=submit]:hover {
	background-color: green;
}

.reg center table tr td input[type=reset]:hover {
	background-color: red;
}

.reg center table tr td p {
	color: blue;
	cursor: pointer;
}
</style>
<script src="other/js/particles.js"></script>
</head>
<body>
	<div id="particles-js"
		style="background-image: url('D:/vcarpool/backgrnd.jpg'); background-size: cover; filter: blur(2px); background-repeat: no-repeat; background-position: 50% 50%;">
		<canvas class="particles-js-canvas-el" width="1366" height="667"
			style="width: 100%; height: 100%;"></canvas>
	</div>
	<div class="reg">
		<center>
			<form method="post" action="RegistrationController.vcp"
				onsubmit="return validateGender() && validateQuestion()">
				<table>

					<!-- Employee ID -->

					<tr>
						<td><input type="number" name="employeeId"
							placeholder="Employee ID" maxlength="7" pattern="[(+]*[0-9]{4-7}[()+. -]*"
							title="Employee id should not contain alphabets" required /></td>
					</tr>

					<!-- User Name -->

					<tr>
						<td><input type="text" name="employeeName" placeholder="Name"
							pattern="[A-Za-z].{0,}"
							title="Name does not contain any number or Symbol" required /></td>
					</tr>


					<!-- Email Id -->

					<tr>
						<td><input type="email" name="employeeEmailId"
							placeholder="Email"
							pattern="[a-z0-9._%+-]+@virtusa.[a-z]{2,}$"
							title="Must contain virtusa domain" required /></td>
					</tr>

					<!-- Password -->

					<tr>
						<td><input type="password" name="passkey"
							placeholder="Password"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
							title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
							required /></td>
					</tr>

					<!-- Occupation -->

					<tr>
						<td><input type="text" name="employeeOccupation"
							placeholder="Occupation" pattern="[A-Za-z].{4,}"
							title="Occupation does not contain any number or Symbol" required /></td>
					</tr>

					<!-- Country -->

					<tr>
						<td><input type="text" name="employeeCountry"
							pattern="[A-Za-z].{4,}"
							title="Country Name  does not contain any number or Symbol and should be of minimum length 4 character"
							placeholder="Country" required /></td>
					</tr>

					<!-- City -->

					<tr>
						<td><input type="text" name="employeeCity" placeholder="City"
							pattern="[A-Za-z].{3,}"
							title="City Name does not contain any number or Symbol and should be of minimum length 4 character"
							required /></td>
					</tr>

					<!-- gender -->

					<tr>
						<td><div>
								<select id="input1" name="employeeGender"
									style="width: 220px; height: 40px; border-radius: 04px; font-family: rk; border: 2px solid white; font-size: 20px;"
									required="required">
									<option value=0>--Gender--</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
									<option value="Other">Other</option>
								</select>
							</div></td>
					</tr>


					<!-- mobile number -->

					<tr>
						<td><input type="number" name="employeeMobileNo"
							placeholder="Mobile no." maxlength="10" pattern="[6-9]{1}[0-9]{9}"
							required /></td>
					</tr>

					<!-- Security Questions  -->

					<tr>
						<td><div>
								<select id="input2" name="securityQuestion"
									style="width: 220px; height: 40px; border-radius: 04px; font-family: rk; border: 2px solid white; font-size: 20px;"
									required>
									<option value=0>Security Question</option>
									<option value="one">What was your School's Name?</option>
									<option value="two">What is your Pet's Name?</option>
									<option value="three">What is Math Teacher's Name?</option>
								</select>
							</div></td>
					</tr>

					<!-- Security Answers  -->

					<tr>
						<td><input type="text" name="securityAnswer"
							placeholder="Answer" pattern="[A-Za-z].{2,}"
							title="Name does not contain any number or Symbol" required /></td>
					</tr>


					<!-- buttons -->

					<tr>
						<td colspan=0.5><input type="submit" value="Register" /><input
							type="reset" value="Clear" /></td>
					</tr>
					<tr>
						<td><a href="login.vcp">Already
								have an account? Login here</a></td>
					</tr>
				</table>
			</form>
		</center>
	</div>
	<script src="other/js/particleconfig.js"></script>
</body>
</html>