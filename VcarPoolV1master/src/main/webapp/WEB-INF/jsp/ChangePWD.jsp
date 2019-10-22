<%@page import="com.virtusa.vcarpoool.model.Employee"%>
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
<script> 
          <%Employee emp = (Employee) request.getAttribute("Employee");
			String utype = (String) request.getAttribute("Utype");%>
            // Function to check Whether both passwords 
            // is same or not. 
            function checkPassword(form) { 
            	password1 = form.oldpwd.value;
                password2 = form.newpwd.value; 
                password3 = form.cnfpwd.value;
                 var psw = "<%=emp.getPasskey()%>
	";
		//if old password not entered
		if (password1 == '') {
			alert("Please enter old Password");
			return false;
		}
		// If new password not entered 
		else if (password2 == '') {
			alert("Please enter  new Password");
			return false;
		}
		// If confirm password not entered 
		else if (password3 == '') {
			alert("Please enter confirm password");
			return false;
		}
		// If Not same return False.     
		else if (password2 != password3) {
			alert("\nPassword did not match: Please try again...");
			return false;
		} else if (password2 == password3 && psw != password1) {
			alert(" Old Password is wrong ");
			return false;
		}

		// If same return True. 
		else if (password2 == password3 && psw == password1) {

			alert("password updated sucessfully");
			return true;
		} else {
			alert("password not updated");
			return false;
		}
	}
</script>
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

<body>
	<%
		try {
			//int eid=(Integer)session.getAttribute("empid");

			//Employee employee=new Employee();
	%>
	<center>
		<font face="Bookman Old Style" size="4">
			<form method="post" onsubmit="return checkPassword(this)"
				action="ChangePass.vcp">
				<div class="page-header">
					<h1>
						<small>Change Password</small>
					</h1>
				</div>
				<table border="1px">
					<!--  <nav aria-label="...">
   <ul class="pager">
    <li class="previous"><a href="profile.jsp"><span aria-hidden="true">&larr;</span> Home</a></li>  
    <li class="next"><a href="Logout.jsp"><span aria-hidden="true">&rarr;</span> Logout</a></li>
   </ul>
</nav> -->
					<%
						//String utype=(String)session.getAttribute("utype");
							if (utype.equals("provider")) {
					%>
					<nav aria-label=" ">
						<ul class="pager">
							<li class="previous"><a href="takeToProvideHome.vcp"><span
									aria-hidden="true">&larr;</span> Home</a></li>
							<li class="next"><a onclick="preventBack()"
								href="Logout.vcp"><span aria-hidden="true">&rarr;</span>
									Logout</a></li>
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
							<li class="next"><a onclick="preventBack()"
								href="Logout.vcp"><span aria-hidden="true">&rarr;</span>
									Logout</a></li>
						</ul>
					</nav>
					<%
						}
					%>
					<tr>
						<th>Old Password:</th>
						<br>
						<td><input type="password" name="oldpwd"></td>
					</tr>
					<tr>
						<th>New Password:</th>
						<td><br> <input type="password" name="newpwd"
							pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
							title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
							required /></td>
					</tr>
					<tr>
						<th>Confirm Password:</th>
						<td><br> <input type="password" name="cnfpwd"></td>
					</tr>
					<input type="hidden" name="empid" value=<%=emp.getEmployeeId()%>>
				</table>
				</br> </br> <input type="submit" value="Save" /><input type="reset"
					value="Refresh">
			</form>

			</form>
		</font>
	</center>
	<%
		} catch (Exception xe) {
	%>
	<jsp:forward page="Logout.jsp" />
	<%
		}
	%>
</body>
</html>