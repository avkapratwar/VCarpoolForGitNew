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

<meta charset="ISO-8859-1">
<title>Virtusa CarPool</title>
</head>

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
					href="index.jsp">Home <span class="sr-only">(current)</span>
				</a></li>

				<li class="nav-item"><a class="nav-link" href="Login.jsp">Provide
						Ride</a></li>
				<li class="nav-item"><a class="nav-link" href="Login.jsp">Login</a>
				</li>

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
					<!-- <th scope="col">Book</th> -->
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
						<%-- <td><a
							href="bookRide.vcp?num=${noOfSeats}&poolId=${list.poolId}&source=${list.source}&destination=${list.destination}&noOfSeats=${list.noOfSeats}&empid=${list.employeeId}">Book
								Ride</a></td>
						<td> --%>
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