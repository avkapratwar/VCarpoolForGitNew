<%@page import="com.virtusa.vcarpoool.model.Provide"%>
<%@page import="com.virtusa.vcarpoool.model.Employee"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap4moving.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/stylefoot.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<script type = "text/javascript" >
   function preventBack(){window.history.forward();}
    setTimeout("preventBack()", 0);
    window.onunload=function(){null};
</script>
 <%

 	//try{
 		//int Check=(int)session.getAttribute("Check");
 		//ProviderDaoServiceIface pdi=new ProviderDaoServiceImpl();
 	 	//int empid= (int)session.getAttribute("Employeeid");
 		//Provider provider= pdi.getPoolDetailsService(empid);
        Employee employee = (Employee)request.getAttribute("EmpDetails");
        Provide provider=(Provide)request.getAttribute("poolDetails");
        int empid1=employee.getEmployeeId();
 	

 	
 	//ProviderDaoServiceIface obj=new ProviderDaoServiceImpl();
  	    
  	    //int poolid=(Integer)session.getAttribute("poolid");
         String name=employee.getEmployeeName();
         //Connection con=DaoConnection.getConnection();
         /*PreparedStatement pst1=con.prepareStatement("select * from UserRegister where EmployeeId=?");
     	pst1.setInt(1, empidname);
     	ResultSet rs=pst1.executeQuery();
     	rs.next();
     	String name1=rs.getString("FIRSTNAME");*/
 %>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow fixed-top">
  <div class="container">
  
    <a class="navbar-brand" href="#">VCarPool</a>
	
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
       
          <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a> 
        </li>

        <li  class="nav-item dropdown" >
          <a class="nav-link dropdown-toggle" href="#"  id="navbarDrop" data-toggle="dropdown"><b> <%=name%> </b></a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="TakeToProfileDisp.vcp" >Profile</a>
            <a class="dropdown-item" href="UpdateProfController.vcp" >Edit profile</a>
            <a class="dropdown-item" href="TakeToChangePass.vcp" >Change Password</a>
           
          </div>
       

          <!-- <a class="nav-link" href="home.jsp"><%=name%></a> -->
        </li>
	 	
		<li>
			 <a onclick="preventBack()" class="nav-link" href="Logout.vcp">Logout</a>
		</li>	 
		
      </ul>
    </div>
  </div>
</nav>
<style>
body  {
  background-image: url("Carpool_Image2.jpg"); 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  background-color: #cccccc;
}
table, th, td {
  border: 2px solid black;
}
</style>

<body>
<%
//int poolid=pm.autoGeneratePoolId();

	
//int empid=(Integer)session.getAttribute("employeeid");
	
	//PreparedStatement pst=con.prepareStatement("insert into ProvideRideString values(?,?,?,?,?,?,?,?,sysdate)");
	//pst.setInt(1,poolid);
	//pst.setInt(2,empid);
	//pst.setString(3,request.getParameter("source"));
	//pst.setString(4,request.getParameter("dest"));
	//pst.setString(5,request.getParameter("stime"));
	//pst.setString(6,request.getParameter("rtime"));
	//pst.setInt(7,Integer.parseInt(request.getParameter("seats")));
	//pst.setString(8,"Active");
	//pst.executeUpdate();
	//Statement s=con.createStatement();
	//s.execute("commit");
	%>
	</br></br></br>
	<%
	 //String name=pm.getName(empid);
	 //int poolid=pd.getPoolId();
	 
	 /*PreparedStatement pst3=con.prepareStatement("select * from UserRegister where EMPLOYEEID=?");
	pst3.setInt(1, empid);
	ResultSet rs2=pst3.executeQuery();
	rs2.next();
	String name=rs2.getString("FIRSTNAME");*/
	/*PreparedStatement pst4=con.prepareStatement("select * from ProvideRideString where EMPLOYEEID=? And POOLID=?");
	pst4.setInt(1, empid);
	pst4.setInt(2, poolid);
	ResultSet rs3=pst4.executeQuery();*/
	
	//ResultSet rs3=pm.getDetails(empid, poolid);
	
	//ProvideDetails provideDetails = pm.getDetails(empid);
	if(provider!=null){
		int poolid=provider.getPoolId();
		%> 
		<div width="100%">
		<div style="float:left;width:30%;"><h4 style="text-align:left;color:red;"><br><br><br><br>**If you want to create new pool please deactivate the status of current pool..**</h4></div>
		<div style="float:right;width:30%;"><h4 style="text-align:left;color:red;"><br><br><br><br>**You will get mail to registered mail id, if any riders books your pool...**</h4></div>
		<div style="float:right;width:40%;">
	<h2 style="text-align:center;color:blue">Your Pool Details</h2>
	<table border="1" align="center">
	<tr><td>Employ Id</td><td><%=provider.getEmployeeId()%></td></tr>
	<tr><td>PoolId</td><td><%=provider.getPoolId()%></td></tr>
	<tr><td>Name</td><td><%=name%></td></tr>
	<tr><td>Source</td><td><%=provider.getSource() %></td></tr>
	<tr><td>Destination</td><td><%=provider.getDestination() %></td></tr>
	<tr><td>Start Time</td><td><%=provider.getStartTime() %></td></tr>
	<tr><td>Return Time</td><td><%=provider.getReturnTime() %></td></tr>
	<tr><td>No. Of Seats</td><td><%=provider.getNoOfSeats() %></td></tr>
	<tr><td>Created Pool</td><td><%=provider.getCurrentDate() %></td></tr>
	<tr><td>Status</td><td><%=provider.getStatus() %></td></tr>
</table></br></br>
<div style="text-align:center">
<a href="taketoupdate.vcp"><input type ="button"  value="UpdatePool"/></a></br></br>
<input type="text" id="xyz" value='<%=provider.getSource()%>' readonly="readonly">
			<input type="text" id="xyz1" value='<%=provider.getDestination()%>' readonly="readonly">
</div>

</div>
</div>
 
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

					var originInput = document.getElementById('xyz');
					var destinationInput = document
							.getElementById('xyz1');
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
			<p><font color="white">Copyright © 2019 VCarPool.&nbsp;</font></p>
		</div>


<%} else{
out.println("Your Details Not Available. Please login again..");
%>
<jsp:forward page="CreatePool.jsp"/>
<%
}
//}catch(Exception xe){%>
	<%-- <jsp:forward page="Login.jsp"/> --%>
<%//}%>
</body>
</html>