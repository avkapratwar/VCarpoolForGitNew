<%@page import="com.virtusa.vcarpoool.model.Employee"%>
<%@page import="com.virtusa.vcarpoool.model.Provide"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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

<body>
	<%
		try {
			//int Check=(int)session.getAttribute("Check");
			//Employee employee = (Employee)request.getAttribute("emloyee");
			// Provider provider=(Provider)request.getAttribute("provider");
			Employee employee = (Employee) request.getAttribute("EmpDetails");
			Provide provider = (Provide) request.getAttribute("poolDetails");
			//int empid=Integer.parseInt(request.getParameter("eid"));
			//int poolid=Integer.parseInt(request.getParameter("pid"));
			//ProviderDaoServiceIface obj=new ProviderDaoServiceImpl();

			//String name=(String)session.getAttribute("name");
			//Provider provider=obj.getPoolDetailsService(empid);

			//int empid=(Integer)session.getAttribute("empid");
			//int poolid=(Integer)session.getAttribute("poolid");
			if (provider != null) {
	%>
	<!DOCTYPE html>
<html>
<head>
<script src="${pageContext.request.contextPath}/bootstrap.bundle.min.js">
	
</script>
<script src="${pageContext.request.contextPath}/jquery.slim.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap.min.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC1aVjwZ4ShO2OVhPQA6A0G48H5FdXy6tc&libraries=places&callback=initMap"
	async defer></script>



</script>
<script type="text/javascript">
	function preventBack() {
		window.history.forward();
	}
	setTimeout("preventBack()", 0);
	window.onunload = function() {
		null
	};
</script>

<script type="text/javascript">
	function validate() {
		var availseats = document.getElementById('txtNoOfSeats').value;
		if (availseats == 0) {
			alert("Minimum Seats are 1 ");
			return false;
		}
		return true;
	}

	/*function onSelectRtime() {
	 var startTime = document.getElementById("input3").value;
	 var returnTime = document.getElementById("input4").value;
	 if(returnTime<=startTime)
	 {
	 alert("return time should be greaterthan startTime ");
	 document.getElementById("input4").value=null;
	 }
	
	 }*/
</script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap4moving.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/stylefoot.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css">
<!-- 	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/Map.css">   -->

</head>
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
					href="ProviderHomePage.jsp">Home <span class="sr-only">(current)</span>
				</a></li>


				<li class="nav-item dropdown "><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"><b><%=employee.getEmployeeName()%></b></a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="TakeToProfileDisp.vcp">Profile</a>
						<a class="dropdown-item" href="UpdateProfController.vcp">Edit
							profile</a> <a class="dropdown-item" href="TakeToChangePass.vcp">Change
							Password</a>

					</div></li>

				<li><a onclick="preventBack()" class="nav-link"
					href="Logout.vcp">Logout</a></li>

			</ul>
		</div>
	</div>
</nav>

<!-- Full Page Image Header with Vertically Centered Content -->

<form method="post" onsubmit="return validate()"
	action="CreatePoolController.vcp">
	<header class="masthead">

		<div class="container h-100">

			<div class="row h-100 align-items-center">

				<div class="col-12 text-center">

					</br>
					</br>
					<h2 class="font-weight-light">
						<u>Update the Pool</u>
					</h2>
					</br>
					<br>



					<div class="form-group">


						<input type="text" class="form-control" id="origin-input"
							value="<%=provider.getSource()%>" name="source"
							required="required">

					</div>

					<div class="form-group">

						<input type="text" class="form-control" id="destination-input"
							value="<%=provider.getDestination()%>" name="destination"
							required="required">

					</div>

					<div class="form-group">

						<select class="form-control" id="input3" name="startTime"
							onchange="OnSelectInput">
							<option value="<%=provider.getStartTime()%>"><%=provider.getStartTime()%></option>
							<option value="12 AM - 1 AM">12 AM - 1 AM</option>
							<option value="1 AM - 2 AM">1 AM - 2 AM</option>
							<option value="2 AM - 3 AM">2 AM - 3 AM</option>
							<option value="3 AM - 4 AM">3 AM - 4 AM</option>
							<option value="4 AM - 5 AM">4 AM - 5 AM</option>
							<option value="5 AM - 6 AM">5 AM - 6 AM</option>
							<option value="6 AM - 7 AM">6 AM - 7 AM</option>
							<option value="7 AM - 8 AM">7 AM - 8 AM</option>
							<option value="8 AM - 9 AM">8 AM - 9 AM</option>
							<option value="9 AM - 10 AM">9 AM - 10 AM</option>
							<option value="10 AM - 11 AM">10 AM - 11 AM</option>
							<option value="11 AM - 12 PM">11 AM - 12 PM</option>
							<option value="12 PM - 1 PM">12 PM - 1 PM</option>
							<option value="1 PM - 2 PM">1 PM - 2 PM</option>
							<option value="2 PM - 3 PM">2 PM - 3 PM</option>
							<option value="3 PM - 4 PM">3 PM - 4 PM</option>
							<option value="4 PM - 5 PM">4 PM - 5 PM</option>
							<option value="5 PM - 6 PM">5 PM - 6 PM</option>
							<option value="6 PM - 7 PM">6 PM - 7 PM</option>
							<option value="7 PM - 8 PM">7 PM - 8 PM</option>
							<option value="8 PM - 9 PM">8 PM - 9 PM</option>
							<option value="9 PM - 10 PM">9 PM - 10 PM</option>
							<option value="10 PM - 11 PM">10 PM - 11 PM</option>
							<option value="11 PM - 12 AM">11 PM - 12 AM</option>
						</select>
					</div>

					<div class="form-group">

						<select class="form-control" id="input4" name="returnTime"
							onchange="OnSelectInput">
							<option value="<%=provider.getReturnTime()%>"><%=provider.getReturnTime()%></option>
							<option value="12 AM - 1 AM">12 AM - 1 AM</option>
							<option value="1 AM - 2 AM">1 AM - 2 AM</option>
							<option value="2 AM - 3 AM">2 AM - 3 AM</option>
							<option value="3 AM - 4 AM">3 AM - 4 AM</option>
							<option value="4 AM - 5 AM">4 AM - 5 AM</option>
							<option value="5 AM - 6 AM">5 AM - 6 AM</option>
							<option value="6 AM - 7 AM">6 AM - 7 AM</option>
							<option value="7 AM - 8 AM">7 AM - 8 AM</option>
							<option value="8 AM - 9 AM">8 AM - 9 AM</option>
							<option value="9 AM - 10 AM">9 AM - 10 AM</option>
							<option value="10 AM - 11 AM">10 AM - 11 AM</option>
							<option value="11 AM - 12 PM">11 AM - 12 PM</option>
							<option value="12 PM - 1 PM">12 PM - 1 PM</option>
							<option value="1 PM - 2 PM">1 PM - 2 PM</option>
							<option value="2 PM - 3 PM">2 PM - 3 PM</option>
							<option value="3 PM - 4 PM">3 PM - 4 PM</option>
							<option value="4 PM - 5 PM">4 PM - 5 PM</option>
							<option value="5 PM - 6 PM">5 PM - 6 PM</option>
							<option value="6 PM - 7 PM">6 PM - 7 PM</option>
							<option value="7 PM - 8 PM">7 PM - 8 PM</option>
							<option value="8 PM - 9 PM">8 PM - 9 PM</option>
							<option value="9 PM - 10 PM">9 PM - 10 PM</option>
							<option value="10 PM - 11 PM">10 PM - 11 PM</option>
							<option value="11 PM - 12 AM">11 PM - 12 AM</option>
						</select>
					</div>




					<div class="form-group">

						<select class="form-control" id="txtNoOfSeats" name="noOfSeats"
							onchange="OnSelectInput" value="<%=provider.getNoOfSeats()%>">
							<option value="<%=provider.getNoOfSeats()%>"><%=provider.getNoOfSeats()%></option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select>

					</div>


					<div class="form-group">

						<select class="form-control" id="input5" name="status"
							value="<%=provider.getStatus()%>">
							<option value="Active">Active</option>
							<option value="Deactive">Deactive</option>

						</select> <input type="hidden" name="employeeId"
							value=<%=employee.getEmployeeId()%>> <input
							type="hidden" name="poolId" value=<%=provider.getPoolId()%>>
						<input type="hidden" name="currentDate"
							value=<%=provider.getCurrentDate()%>>

					</div>

					<button type="submit" class="btn btn-primary">UpdatePool</button>
					<!-- <button type="submit" onsubmit="OnSubmit()" class="btn btn-primary">UpdatePool</button> -->

				</div>


			</div>

		</div>



	</header>
</form>
<form>
	<section class="py-5">
		<style>
#map {
	height: 100%;
}

#mode-selector {
	color: #fff;
	background-color: #4d90fe;
	margin-left: 12px;
	padding: 5px 11px 0px 11px;
}

#mode-selector label {
	font-family: Roboto;
	font-size: 13px;
	font-weight: 300;
}
</style>
		</head>
		<body>
			<div style="display: none">
				<!-- 
        <input id="origin-input" class="controls" type="text"
            placeholder="Enter an origin location" >

        <input id="destination-input" class="controls" type="text"
            placeholder="Enter a destination location">
            
             -->

				<div id="mode-selector" class="controls">
					<input type="radio" name="type" id="changemode-driving"
						checked="checked"> <label for="changemode-driving">Driving</label>

					<input type="radio" name="type" id="changemode-walking"> <label
						for="changemode-walking">Walking</label> <input type="radio"
						name="type" id="changemode-transit"> <label
						for="changemode-transit">Transit</label>


				</div>
			</div>

			<div id="map"></div>

			<script>
				// This example requires the Places library. Include the libraries=places
				// parameter when you first load the API. For example:
				// <script
				// src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

				function initMap() {
					var map = new google.maps.Map(document
							.getElementById('map'), {
						mapTypeControl : false,
						center : {
							lat : 17.4207,
							lng : 78.3443
						},
						zoom : 16
					});

					new AutocompleteDirectionsHandler(map);
				}

				/**
				 * @constructor
				 */
				function AutocompleteDirectionsHandler(map) {
					this.map = map;
					this.originPlaceId = null;
					this.destinationPlaceId = null;
					this.travelMode = 'WALKING';
					this.directionsService = new google.maps.DirectionsService;
					this.directionsDisplay = new google.maps.DirectionsRenderer;
					this.directionsDisplay.setMap(map);

					var originInput = document.getElementById('origin-input');
					var destinationInput = document
							.getElementById('destination-input');
					var modeSelector = document.getElementById('mode-selector');

					var originAutocomplete = new google.maps.places.Autocomplete(
							originInput);
					// Specify just the place data fields that you need.
					originAutocomplete.setFields([ 'place_id' ]);

					var destinationAutocomplete = new google.maps.places.Autocomplete(
							destinationInput);
					// Specify just the place data fields that you need.
					destinationAutocomplete.setFields([ 'place_id' ]);

					this.setupClickListener('changemode-walking', 'WALKING');
					this.setupClickListener('changemode-transit', 'TRANSIT');
					this.setupClickListener('changemode-driving', 'DRIVING');

					this.setupPlaceChangedListener(originAutocomplete, 'ORIG');
					this.setupPlaceChangedListener(destinationAutocomplete,
							'DEST');

					//  this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(originInput);
					// this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(
					//    destinationInput);
					this.map.controls[google.maps.ControlPosition.TOP_LEFT]
							.push(modeSelector);
				}

				// Sets a listener on a radio button to change the filter type on Places
				// Autocomplete.
				AutocompleteDirectionsHandler.prototype.setupClickListener = function(
						id, mode) {
					var radioButton = document.getElementById(id);
					var me = this;

					radioButton.addEventListener('click', function() {
						me.travelMode = mode;
						me.route();
					});
				};

				AutocompleteDirectionsHandler.prototype.setupPlaceChangedListener = function(
						autocomplete, mode) {
					var me = this;
					autocomplete.bindTo('bounds', this.map);

					autocomplete
							.addListener(
									'place_changed',
									function() {
										var place = autocomplete.getPlace();

										if (!place.place_id) {
											window
													.alert('Please select an option from the dropdown list.');
											return;
										}
										if (mode === 'ORIG') {
											me.originPlaceId = place.place_id;
										} else {
											me.destinationPlaceId = place.place_id;
										}
										me.route();
									});
				};

				AutocompleteDirectionsHandler.prototype.route = function() {
					if (!this.originPlaceId || !this.destinationPlaceId) {
						return;
					}
					var me = this;

					this.directionsService.route({
						origin : {
							'placeId' : this.originPlaceId
						},
						destination : {
							'placeId' : this.destinationPlaceId
						},
						travelMode : this.travelMode
					}, function(response, status) {
						if (status === 'OK') {
							me.directionsDisplay.setDirections(response);
						} else {
							window.alert('Directions request failed due to '
									+ status);
						}
					});
				};
			</script>
			<script
				src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBR6MZrCw03Y7u5kTL39NMrF-Z6OZOTU0I&libraries=places&callback=initMap"
				async defer></script>
	</section>
</form>
<footer class="ct-footer">


	<div class="inner-right">
		<p>
			<font color="white">Copyright © 2019 VCarPool.&nbsp;</font>
		</p>
	</div>

</footer>

</html>
<%
	} else {
			out.println("Your Data Not Found...");
		}
	} catch (Exception xe) {
%>
<jsp:forward page="Login.vcp" />
<%
	}
%>
</body>
</html>