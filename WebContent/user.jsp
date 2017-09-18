<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function myfun() {

	var id = document.getElementById("vehicle_id").value;
	var vehicleType = document.getElementById("vehicle_type").value;

	if (id == "") {
		document.getElementById("vehicleid").innerHTML = "Fill in vehicle id!";
		document.getElementById("vehicle_id").style.borderColor = "red";
	} else if (id != "") {
		document.getElementById("vehicleid").innerHTML = "";
	}
	
	if (vehicleType == "") {
		document.getElementById("vehicletype").innerHTML = "Fill in vehicle type!";
		document.getElementById("vehicle_type").style.borderColor = "red";
	} else if (vehicleType != "") {
		document.getElementById("vehicletype").innerHTML = "";
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Vehicle</title>
</head>
<body>
	<form method="POST" onclick="myfun()" action='UserHandler' name="frmAddUser">

		<input type="hidden" name="action" value="insert" />
		<p>
			<b>Add New Vehicle</b>
		</p>
		<table>
			<tr>
				<td>Vehicle ID:</td>
				<td><input type="text" name="id" id="vehicle_id">
				<div id="vehicleid"></div></td>
			</tr>
			<tr>
				<td>Vehicle Type:</td>
				<td><input type="text" name="vehicleType" id="vehicle_type" />
				<div id="vehicletype"></div></td>
			</tr>
			<tr>
				<td>Numberplate:</td>
				<td><input type="text" name="numberplate"
					id="vehicle_numberplate" /></td>
				<div id="vehiclenumberplate"></div>
			</tr>
			<tr>
			<tr>
				<td>Brand:</td>
				<td><input type="text" name="brand" id="vehicle_brand" /></td>
				<div id="vehiclebrand"></div>
			</tr>
			<tr>
				<td>Model:</td>
				<td><input type="text" name="model" id="vehicle_model" /></td>
				<div id="vehiclemodel"></div>
			</tr>
			<tr>
				<td>Color:</td>
				<td><input type="text" name="color" id="vehicle_color" /></td>
				<div id="vehiclecolor"></div>
			</tr>
			<tr>
				<td>Type:</td>
				<td><input type="text" name="type" id="type" /></td>
				<div id="type"></div>
			</tr>
			<tr>
				<td>Manufacturing date:</td>
				<td><input type="text" name="manufacturingDate"
					id="vehicle_date" /></td>
				<div id="vehicledate"></div>
			</tr>
			<tr>
				<td>Engine:</td>
				<td><input type="text" name="engine" id="vehicle_engine" /></td>
				<div id="vehicleengine"></div>
			</tr>
			<tr>
				<td>Transmission:</td>
				<td><input type="text" name="transmission"
					id="vehicle_transmission" /></td>
				<div id="vehicletransmission"></div>
			</tr>
			<tr>
				<td>Fuel:</td>
				<td><input type="text" name="fuel" id="vehicle_fuel" /></td>
				<div id="vehiclefuel"></div>
			</tr>
			<tr>
				<td>Milage:</td>
				<td><input type="text" name="milage" id="vehicle_milage" /></td>
				<div id="vehiclemilage"></div>
			</tr>
			<tr>
				<td>Details:</td>
				<td><input type="text" name="details" id="vehicle_details" /></td>
				<div id="vehicledetails"></div>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Submit"/></td>
			</tr>
		</table>
	</form>
	<p>
		<a href="UserHandler?action=listUser">View-All-Vehicles</a>
</body>
</html>