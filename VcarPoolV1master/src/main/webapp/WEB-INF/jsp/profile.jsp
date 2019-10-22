<%@page import="com.virtusa.vcarpoool.model.Employee"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	<center>

		<%
			try {
				//int eid=(Integer)session.getAttribute("empid");
				String utype = (String) request.getAttribute("Utype");
				Employee employee = (Employee) request.getAttribute("Employee");
				System.out.println("Guru");
		%>
		<%
			if (employee != null) {
		%>
		<div class="page-header">
			<font face="Bookman Old Style" size="4">
				<h1>
					<small>My Profile</small>
				</h1>
			</font>
		</div>
		<font face="Bookman Old Style" size="4.7">
			<table border="1px">
				<tr>
					<th>EmployeeID:</th>
					<td><%=employee.getEmployeeId()%></td>
				</tr>
				<tr>
					<th>Name:</th>
					<td><%=employee.getEmployeeName()%></td>
				<tr>
					<th>EmailID:</th>
					<td><%=employee.getEmployeeEmailId()%></td>
				</tr>
				<tr>
					<th>Occupation:</th>
					<td><%=employee.getEmployeeOccupation()%></td>
				</tr>
				<tr>
					<th>Country:</th>
					<td><%=employee.getEmployeeCountry()%></td>
				</tr>
				<tr>
					<th>City:</th>
					<td><%=employee.getEmployeeCity()%></td>
				</tr>
				<tr>
					<th>Gender:</th>
					<td><%=employee.getEmployeeGender()%></td>
				</tr>
				<tr>
					<th>Mobile:</th>
					<td><%=employee.getEmployeeMobileNo()%></td>
				</tr>
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
						}
					} catch (Exception xe) {
				%>
				<jsp:forward page="Logout.vcp"></jsp:forward>
				<%
					}
				%>
			</table>
		</font>
</body>
</html>

