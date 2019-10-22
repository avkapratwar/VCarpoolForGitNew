
<%@page import="com.virtusa.vcarpoool.model.Employee"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

<body>

	<%
		try {
			//int eid=(Integer)request.getAttribute("empid");
			String utype = (String) request.getAttribute("Utype");
			Employee employee = (Employee) request.getAttribute("Employee");
	%>

	<style type="text/css">
input {
	background-color: rgba(0, 0, 0, 0);
	color: #0000FF;
	border: 100;
}

select {
	background-color: rgba(0, 0, 0, 0.0);
	color: #0000FF;
	border: none;
}
</style>

	<center>
		<font face="Bookman Old Style" size="4">
			<form method="post" action="ProfUpdate.vcp">
				<div class="page-header">
					<h1>
						<small>Edit Profile</small>
					</h1>
				</div>
				<!-- <nav aria-label="...">
  <ul class="pager">
    <li class="previous"><a href="home.jsp"><span aria-hidden="true">&larr;</span> Home</a></li>
    <li class="next"><a href="login.html"><span aria-hidden="true">&rarr;</span> Logout</a></li>
  </ul>
</nav> -->
				<%
					if (utype.equals("provider")) {
				%>
				<nav aria-label=" ">
					<ul class="pager">
						<li class="previous"><a href="takeToProvideHome.vcp"><span
								aria-hidden="true">&larr;</span> Home</a></li>
						<li class="next"><a onclick="preventBack()" href="Logout.vcp"><span
								aria-hidden="true">&rarr;</span> Logout</a></li>
					</ul>
				</nav>
				<%
					}
						if (utype.equals("rider")) {
				%>
				<nav aria-label=" ">
					<ul class="pager">
						<li class="previous"><a href="takeToRiderHome.vcp"><span
								aria-hidden="true">&larr;</span> Home</a></li>
						<li class="next"><a onclick="preventBack()" href="Logout.vcp"><span
								aria-hidden="true">&rarr;</span> Logout</a></li>
					</ul>
				</nav>
				<%
					}
				%>

				<table border="1px" style="border-collapse: collapse;">
					<tr>
						<th>Employee ID</th>
						<td><input type="text" name="employeeId" readonly="readonly"
							value="<%=employee.getEmployeeId()%>"></td>
					</tr>

					<tr>
						<th>Name</th>
						<td><input type="text" name="employeeName"
							value="<%=employee.getEmployeeName()%>" pattern="[A-Za-z].{0,}"
							title="Name does not contain any number or Symbol" required /></td>
					</tr>
					<tr>
						<th>Email ID</th>
						<td><input type="text" name="employeeEmailId"
							value="<%=employee.getEmployeeEmailId()%>"
							pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
							title="email does not start with number" required /></td>
					</tr>
					<tr>
						<th>Occupation</th>
						<td><input type="text" name="employeeOccupation"
							value="<%=employee.getEmployeeOccupation()%>"
							pattern="[A-Za-z].{4,}"
							title="Occupation does not contain any number or Symbol" required /></td>
					</tr>
					<tr>
						<th>Country</th>
						<td><input type="text" name="employeeCountry"
							value="<%=employee.getEmployeeCountry()%>"
							pattern="[A-Za-z].{4,}"
							title="Country Name does not contain any number or Symbol"
							required /></td>
					</tr>
					<tr>
						<th>City</th>
						<td><input type="text" name="employeeCity"
							value="<%=employee.getEmployeeCity()%>" pattern="[A-Za-z].{2,}"
							title="City Name  does not contain any number or Symbol" required /></td>
					</tr>
					<tr>
						<th>Gender</th>
						<td><select style="width: 160px;" name="employeeGender"
							value="<%=employee.getEmployeeGender()%>">
								<option value="<%=employee.getEmployeeGender()%>">
									<%=employee.getEmployeeGender()%>
								</option>
								<option value="Male">Male</option>
								<option value="Female">Female</option>
								<option value="Other">Other</option>
						</select></td>
					</tr>
					<tr>
						<th>MobileNo</th>
						<td><input type="number" name="employeeMobileNo"
							value="<%=employee.getEmployeeMobileNo()%>"
							pattern="[0-9]{10-10}" required /></td>
					</tr>
					<tr>
						<input type="hidden" name="passkey"
							value=<%=employee.getPasskey()%>>
						<input type="hidden" name="securityQuestion"
							value=<%=employee.getSecurityQuestion()%>>
						<input type="hidden" name="securityAnswer"
							value=<%=employee.getSecurityAnswer()%>>
				</table>


				<center>
					</br>
					</br>
					<button style="width: 100px; height: 30px;" type="submit" />
					Update
					</button>
		</font>
	</center>
	</form>
	</center>

	<%
		} catch (Exception xe) {
	%>
	<jsp:forward page="Logout.vcp" />
	<%
		}
	%>

</body>
</html>

