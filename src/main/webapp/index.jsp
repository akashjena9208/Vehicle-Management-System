<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Dashboard</title>
    <link rel="stylesheet" type="text/css" href="css/index.css">
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
            text-align: center;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            width: 90%;
            max-width: 400px;
        }

        h1 {
            text-decoration: underline;
            margin-bottom: 20px;
        }

        /* Button Styling */
        .btn-container {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .btn {
            text-decoration: none;
            background: linear-gradient(90deg, #ff416c, #ff4b2b);
            color: white;
            padding: 12px 20px;
            font-size: 18px;
            border-radius: 30px;
            transition: transform 0.3s, background 0.3s;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .btn:hover {
            background: linear-gradient(90deg, #ff4b2b, #ff416c);
            transform: scale(1.05);
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .container {
                width: 90%;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Welcome to Vehicle Dashboard</h1>
        <div class="btn-container">
            <a href="addVehicle.jsp" class="btn">➕ ADD VEHICLE</a>
            <a href="display-all-vehicle" class="btn">📋 DISPLAY ALL VEHICLES</a>
        </div>
    </div>

</body>
</html>
