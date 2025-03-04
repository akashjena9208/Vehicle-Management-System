<%@page import="com.jsp.spring.vms.entity.Vehicle"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Vehicle</title>
    <style>
        
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #1a1a2e, #16213e, #0f3460);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: white;
        }

        .container {
            width: 90%;
            max-width: 400px;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        h1 {
            text-decoration: underline;
            margin-bottom: 20px;
        }

        input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: none;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.2);
            color: white;
            font-size: 16px;
            outline: none;
        }

        input[readonly] {
            background: rgba(255, 255, 255, 0.3);
            cursor: not-allowed;
        }

        input::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }

        /* Button Styling */
        .btn {
            width: 100%;
            background: linear-gradient(90deg, #ff416c, #ff4b2b);
            color: white;
            padding: 12px;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            border: none;
            transition: 0.3s ease-in-out;
        }

        .btn:hover {
            background: linear-gradient(90deg, #ff4b2b, #ff416c);
            transform: scale(1.05);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                width: 100%;
                padding: 20px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Update Vehicle Details</h1>
        
        <% Vehicle v = (Vehicle) request.getAttribute("vehicle"); %>
        
        <form action="update-vehicle-by-id" method="post">
            <input type="number" value="<%= v.getVehicleId() %>" name="vehicleId" readonly>  
            <input type="text" value="<%= v.getModel() %>" name="model" required>  
            <input type="text" value="<%= v.getBrand() %>" name="brand" required>  
            <input type="text" value="<%= v.getType() %>" name="type" required>  
            <input type="number" value="<%= v.getPrice() %>" name="price" required>  
            <input type="submit" value="Update Vehicle" class="btn">  
        </form>
    </div>

</body>
</html>
