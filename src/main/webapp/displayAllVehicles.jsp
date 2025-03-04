<%@page import="com.jsp.spring.vms.entity.Vehicle"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Vehicle List</title>
<link rel="stylesheet" type="text/css" href="css/displayAllVehicles.css">
<style>

body {
	font-family: 'Arial', sans-serif;
	background: linear-gradient(135deg, #1a1a2e, #16213e, #0f3460);
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	color: white;
}

.container {
	width: 90%;
	max-width: 900px;
	text-align: center;
	background: rgba(255, 255, 255, 0.1);
	backdrop-filter: blur(10px);
	padding: 30px;
	border-radius: 15px;
	box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
}

h1 {
	text-decoration: underline;
	margin-bottom: 20px;
}

/* Table Styling */
table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
	background: rgba(255, 255, 255, 0.2);
	backdrop-filter: blur(8px);
	border-radius: 10px;
	overflow: hidden;
}

th, td {
	padding: 12px;
	text-align: center;
	border-bottom: 1px solid rgba(255, 255, 255, 0.3);
}

th {
	background: rgba(255, 255, 255, 0.2);
}

tr:hover {
	background: rgba(255, 255, 255, 0.1);
	transition: 0.3s ease-in-out;
}

/* Button Styling */
.btn {
	text-decoration: none;
	background: linear-gradient(90deg, #ff416c, #ff4b2b);
	color: white;
	padding: 8px 15px;
	font-size: 14px;
	border-radius: 20px;
	transition: transform 0.3s, background 0.3s;
	display: inline-block;
}

.btn:hover {
	background: linear-gradient(90deg, #ff4b2b, #ff416c);
	transform: scale(1.05);
}

.back-link {
	text-decoration: none;
	color: white;
	font-size: 18px;
	margin-top: 20px;
	display: inline-block;
}

.back-link:hover {
	color: #ff4b2b;
}

/* Responsive Design */
@media ( max-width : 768px) {
	.container {
		width: 100%;
		padding: 20px;
	}
}
</style>
</head>
<body>

	<div class="container">
		<h1>List of the Vehicle</h1>

		<table>
			<tr>
				<th>Vehicle Id</th>
				<th>Model</th>
				<th>Brand</th>
				<th>Type</th>
				<th>Price</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<%
			List<Vehicle> vehicles = (List<Vehicle>) request.getAttribute("vehicles");
			for (Vehicle v : vehicles) {
			%>
			<tr>
				<td><%=v.getVehicleId()%></td>
				<td><%=v.getModel()%></td>
				<td><%=v.getBrand()%></td>
				<td><%=v.getType()%></td>
				<td>₹<%=v.getPrice()%></td>
				<td><a
					href="find-vehicle-by-id?vehicleId=<%=v.getVehicleId()%>"
					class="btn">✏ Update</a></td>
				<td><a
					href="delete-vehicle-by-id?vehicleId=<%=v.getVehicleId()%>"
					class="btn">🗑 Delete</a></td>
			</tr>
			<%
			}
			%>
		</table>

		<br> <a href="index.jsp" class="back-link">⬅ Back to Index</a>
	</div>

</body>
</html>
