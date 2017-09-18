<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="com.garage.bean.UserBean"%>
<%@ page import="com.garage.dao.UserDao"%>
<%@ page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Vehicles</title>
</head>
<body>
	<%
		//UserBean user = new UserBean();
		UserDao dao = new UserDao();
		List<UserBean> userList = dao.getAllUsers();
		//Iterator<UserBean> itr = userList.iterator();
	%>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Vehicle type</th>
			<th>Numberplate</th>
			<th>Brand</th>
			<th>Model</th>
			<th>Color</th>
			<th>Type</th>
			<th>Manufacturing date</th>
			<th>Engine</th>
			<th>Transmission</th>
			<th>Fuel</th>
			<th>Milage</th>
			<th>Details</th>
		</tr>
		<tr>
			<%
				/*while(itr.hasNext())
				 {
				 System.out.println(user.getId());*/
				for (UserBean user : userList) {
			%>
			<td><%=user.getId()%></td>
			<td><%=user.getVehicleType()%></td>
			<td><%=user.getNumberplate()%></td>
			<td><%=user.getBrand()%></td>
			<td><%=user.getModel()%></td>
			<td><%=user.getColor()%></td>
			<td><%=user.getType()%></td>
			<td><%=user.getManufacturingDate()%></td>
			<td><%=user.getEngine()%></td>
			<td><%=user.getTransmission()%></td>
			<td><%=user.getFuel()%></td>
			<td><%=user.getMilage()%></td>
			<td><%=user.getDetails()%></td>
			<td><a
				href="UserHandler?action=editform&userId=<%=user.getId()%>">Update vehicle</a></td>
			<td><a href="UserHandler?action=delete&userId=<%=user.getId()%>">Delete vehicle</a></td>

		</tr>
		<%
			}
			//}
		%>
	</table>
	<p>
		<a href="UserHandler?action=insert">Add Vehicle</a>
	</p>
</body>
</html>