<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap4moving.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/stylefoot.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Virtusa CarPool</title>
</head>

<!-- Navigation -->
<nav
	class="navbar navbar-expand-lg navbar-light bg-light shadow fixed-top">
	<div class="container">

		<a class="navbar-brand" href="indexAfter.jsp">VCarPool</a>

		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarResponsive" aria-controls="navbarResponsive"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="indexAfter.jsp">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown "><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"><b>User Profile</b></a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="TakeToProfileDisp.vcp">Profile</a>
						<a class="dropdown-item" href="UpdateProfController.vcp">Edit
							profile</a> <a class="dropdown-item" href="TakeToChangePass.vcp">Change
							Password</a>

					</div></li>
				<li class="nav-item"><a class="nav-link" href="Logout.vcp">Logout
				</a></li>


			</ul>
		</div>
	</div>
</nav>
<body>
	<%-- Success ${lists} --%>

	<section class="py-5">
		<center>
			<br /> <br /> <font size="6">Search Results</font> <br /> Note: To
			book a ride and view details please login...
		</center>
		<br />
		<table class="table table-hover table-dark">
			<thead>
				<tr>
					<th scope="col">Pool Id</th>
					<th scope="col">Origin</th>
					<th scope="col">Destination</th>
					<th scope="col">Start Time</th>
					<th scope="col">Return Time</th>
					<th scope="col">Number of Seats</th>
					<th scope="col">Book</th>
					<!-- 	  <th scope="col">Contact</th>
		  <th scope="col">Book</th>  -->
				</tr>
			</thead>

			<c:forEach items="${lists}" var="list">
				<tbody>
					<tr>
						<td>${list.poolId}</td>
						<td>${list.source}</td>
						<td>${list.destination}</td>
						<td>${list.startTime}</td>
						<td>${list.returnTime}</td>
						<td>${list.noOfSeats}</td>
						<td><a
							href="bookRide.vcp?num=${noOfSeats}&poolId=${list.poolId}&source=${list.source}&destination=${list.destination}&noOfSeats=${list.noOfSeats}&empid=${list.employeeId}&start=${list.startTime}&return=${list.returnTime}">Book
								Ride</a></td>
						<td>
					</tr>
				</tbody>
			</c:forEach>

		</table>
</body>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />

<script src="${pageContext.request.contextPath}/bootstrap.bundle.min.js">
	
</script>
<script src="${pageContext.request.contextPath}/jquery.slim.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap.min.js"></script>



<footer class="ct-footer">



	<div class="inner-right">
		<p><font color="white">Copyright © 2019 VCarPool.&nbsp;</font></p>
	</div>

</footer>
</html>