<!-- <html>
<body>
<a href="addUser">Add User</a>
<a href="ShowAllAlumni">Show All Alumni</a>
<a href="addapplication">Apply for Admission</a>
 
</body>
</html> -->

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Virtusa CarPool</title>
<link rel="stylesheet" type="text/css" href="css//bootstrap4moving.css">
<link rel="stylesheet" type="text/css" href="css/stylefoot.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
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
				<!--         <li class="nav-item">
          <a class="nav-link" href="#">Find Ride</a>
        </li>
-->
				<li class="nav-item"><a class="nav-link" href="Login.jsp">Provide
						Ride</a></li>
				<li class="nav-item"><a class="nav-link" href="Login.jsp">Login</a>
				</li>

				<!-- 	<li>
			 <a class="nav-link" href="#">Register</a>
		</li>	 
-->
			</ul>
		</div>
	</div>
</nav>
<script type="text/javascript">
	function validate() {
		//var timeObj=new Packages.com.Virtusa.Carpooling.beans.TimeUtility("12:60 am");
		//var result=timeObj.validate();
		var availseats = document.getElementById('txtNoOfSeats').value;
		if (availseats == 0) {
			alert("Minimum Seats are 1 ");

			return false;
		}
		/*if(result){
			alret("Invalid Time. Please Follow Instructions.");
			return false;
		}*/
		return true;
	}

	function validateTime() {
		var time = document.getElementById("input3").value;
		if (time == 0) {
			alert("Select correct Start Time.");
			return false;
		}
		return true;
	}

	function validateTime1() {
		var time = document.getElementById("input4").value;
		if (time == 0) {
			alert("Select correct Return Time.");
			return false;
		}
		return true;
	}
</script>

<!-- Full Page Image Header with Vertically Centered Content -->
<form method="post"
	onsubmit="return validateTime() && validateTime1() &&  validate()"
	action="FindRideHomeBefLogin1.vcp">
	<header class="masthead">

		<div class="container h-100">

			<div class="row h-100 align-items-center">

				<div class="col-12 text-center">

					<h1 class="font-weight-light">Welcome To VCarPool</h1>

					<div class="form-group">

						<input type="text" class="form-control" id="origin-input"
							placeholder="From" name="source" required="required">

					</div>

					<div class="form-group">

						<input type="text" class="form-control" id="destination-input"
							placeholder="To" name="destination" required="required">

					</div>

					<div class="form-group">

						<select class="form-control" id="input3" name="startTime"
							onchange="OnSelectInput">
							<option value="0">-Select Start Time -</option>
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
							<option value="0">-Select End Time-</option>
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
							onchange="OnSelectInput">
							<option value="0">Select Seats</option>
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
						</select>

					</div>


					<button type="submit" class="btn btn-primary">Search Ride</button>

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

<script src="/bootstrap.bundle.min.js"></script>
<script src="/jquery.slim.min.js"></script>
<script src="/bootstrap.min.js"></script>


<footer class="ct-footer">

	<div class="inner-right">
		<p>
			<font color="white">Copyright © 2019 VCarPool.&nbsp;</font>
		</p>
	</div>

</footer>

</html>
