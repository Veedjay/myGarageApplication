<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.garage.bean.UserBean"%>
<%@ page import="com.garage.dao.UserDao"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Vehicle</title>
</head>
<body>
	<%
		UserBean user = new UserBean();
	%>
	<%
		UserDao dao = new UserDao();
	%>
	<form method="POST" action='UserHandler' name="frmEditUser">
		<input type="hidden" name="action" value="edit" />
		<%
			String uid = request.getParameter("userId");
			if (!((uid) == null)) {
				int id = Integer.parseInt(uid);
				user = dao.getUserById(id);
		%>
		<table>
			<tr>
				<td>Vehicle ID:</td>
				<td><input type="text" name="id" Readonly="readonly" 				 
					value="<%=user.getId()%>"></td>
			</tr>
			<tr>
				<td>Vehicle Type:</td>
				<td><input type="text" name="vehicleType" 
				value="<%=user.getVehicleType()%>"></td>
			</tr>
			<tr>
				<td>Numberplate:</td>
				<td><input type="text" name="numberplate"
				value="<%=user.getNumberplate()%>"/></td>
			</tr>
			<tr>
				<td>Brand:</td>
				<td><input type="text" name="brand"
				value="<%=user.getBrand()%>" /></td>
			</tr>
			<tr>
				<td>Model:</td>
				<td><input type="text" name="model" 
				value="<%=user.getModel()%>"/></td>
			</tr>
			<tr>
				<td>Color:</td>
				<td><input type="text" name="color" 
				value="<%=user.getColor()%>"/></td>
			</tr>
			<tr>
				<td>Type:</td>
				<td><input type="text" name="type" 
				value="<%=user.getType()%>"/></td>
			</tr>
			<tr>
				<td>Manufacturing date:</td>
				<td><input type="date" name="manufacturingDate" 
				value="<%=user.getManufacturingDate()%>"/></td>
			</tr>
			<tr>
				<td>Engine:</td>
				<td><input type="text" name="engine" 
				value="<%=user.getEngine()%>"/></td>
			</tr>
			<tr>
				<td>Transmission:</td>
				<td><input type="text" name="transmission" 
				value="<%=user.getTransmission()%>"/></td>
			</tr>
			<tr>
				<td>Fuel:</td>
				<td><input type="text" name="fuel"
				value="<%=user.getFuel()%>" /></td>
			</tr>
			<tr>
				<td>Milage:</td>
				<td><input type="text" name="milage" 
				value="<%=user.getMilage()%>"/></td>
			</tr>
			<tr>
				<td>Details:</td>
				<td><input type="text" name="details" 
				value="<%=user.getDetails()%>"/></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Update" /></td>
			</tr>
		</table>
		<%
			} else
				out.println("ID Not Found");
		%>
	</form>
</body>
</html>