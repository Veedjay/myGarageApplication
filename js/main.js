function myfun() {

	var id = document.getElementById("vehicle_id").value;
	var vehicleType = document.getElementById("vehicle_type").value;
	
	/*var numberplate = document.getElementById("vehicle_numberplate").value;
	var brand = document.getElementById("vehicle_brand").value;
	var model = document.getElementById("vehicle_model").value;
	var color = document.getElementById("vehicle_color").value;
	var type = document.getElementById("type").value;
	var manufacturingDate = document.getElementById("vehicle_manufacturingdate").value;
	var engine = document.getElementById("vehicle_engine").value;
	var transmission = document.getElementById("vehicle_transmission").value;
	var fuel = document.getElementById("vehicle_fuel").value;
	var milage = document.getElementById("vehicle_milage").value;
	var details = document.getElementById("vehicle_details").value;*/

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