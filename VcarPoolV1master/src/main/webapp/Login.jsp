<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
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


</head> 
<script type="text/javascript">
function validateUserType(){
	var type=document.getElementById("input").value;
	if(type==0){
		alert("Select Valid User Type.");
		return false;
	}
	return true;
}
</script>
<%
if(request.getAttribute("WrongCredentials")!=null){
	%>
<script type="text/javascript">
	alert("invalid username or password. Please try again.");
</script>
<%
}
%>

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

/* -----------LOGIN-----------------*/
.login {
	background-color: lightblack;
	width: 23%;
	padding: 100px;
	color: white;
	font-family: rk;
	position: absolute;
	top: 5%;
	right: 60%;
	border-radius: 04px;
	font-size: 30px;
	opacity: 2.8;
}

.login center table tr td input[type=number] {
	font-size: 20px;
	padding: 5px;
	border: 2px solid white;
	border-radius: 04px;
	font-family: rk;
}

.login center table tr td input[type=text] {
	font-size: 20px;
	padding: 5px;
	border: 2px solid white;
	border-radius: 04px;
	font-family: rk;
}

.login center table tr td input[type=password] {
	font-size: 20px;
	padding: 5px;
	border: 2px solid white;
	border-radius: 04px;
	font-family: rk;
}

.login center table tr td input[type=submit] {
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

.login center table tr td input[type=reset] {
	font-size: 20px;
	padding: 5px;
	margin-top: 10px;
	border: 2px solid white;
	background-color: #03A9F4;
	border-radius: 02px;
	color: white;
	width: 48%;
}

.login center table tr td input[type=submit]:hover {
	background-color: green;
}

.login center table tr td input[type=reset]:hover {
	background-color: red;
}

.login center table tr td p {
	color: white;
	cursor: pointer;
}
</style>
<script src="other/js/particles.js"></script>

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

	<div id="particles-js"
		style="background-image: url('/Carpool_Image2.jpg'); background-size: cover; filter: blur(2px); background-repeat: no-repeat; background-position: 50% 50%;">
		<canvas class="particles-js-canvas-el" width="1366" height="667"
			style="width: 100%; height: 100%;"></canvas>
	</div>
	<div class="login">
		<center>
			<h1>
				<span style="color: #008000;">Login</span>
			</h1>
			<form method="post" action="AuthenticationUserController.vcp"
				onsubmit="return validateUserType()">
				<table>
					<tr>
						<td><input type="text" name="txtEmpid"
							placeholder="Employee ID" maxlength="7" pattern="[0-9]{1,7}"
							title="Employee id should not contain alphabets" required /></td>
					</tr>
					<tr>
						<td><input type="password" name="txtPwd"
							placeholder="Password" required /></td>
					</tr>
					<tr>
						<td><div class="form-group">
								<select id="input" name="utype"
									style="width: 220px; height: 40px; border-radius: 04px; font-family: rk; font-size: 20px;">
									<option value=0>-Select-</option>
									<option value="provider">As Provider</option>
									<option value="rider">As Rider</option>
								</select>
							</div></td>
					</tr>
					<tr>
						<td colspan=0.5><input type="submit" value="Login" /><input
							type="reset" value="Clear" /></td>
					</tr>

					<tr>
						<td><a href="RegistrationPage.jsp"><p style="color: blue">Don't
									have an account? Register here</p></a></td>
					</tr>

					<tr>
						<td><a href="forgotpasstake.vcp"><p style="color: blue">Forgot
									Password?</p></a></td>
					</tr>

				</table>
			</form>
		</center>
	</div>
	<script src="other/js/particleconfig.js"></script>
</body>
</html>