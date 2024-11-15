

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Service Success</title>
<style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styling */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #ffecd2, #fcb69f); /* Gradient background */
        }

        /* Message Box Styling */
        .message-box {
            background: white;
            padding: 20px 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        /* Heading Styling */
        .message-box h1 {
            font-size: 2em;
            color: #333;
            margin-bottom: 10px;
        }

        /* Link Styling */
        .message-box a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            text-decoration: none;
            color: white;
            background-color: #ff6f61;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.2s;
        }

        .message-box a:hover {
            background-color: #e55d4a;
            transform: scale(1.05); /* Slight zoom effect */
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3); /* Shadow on hover */
        }

        /* Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Floating Icons Animation */
        .floating-icons {
            position: absolute;
            width: 100%;
            height: 100%;
            overflow: hidden;
            z-index: -1;
        }

        .floating-icons img {
            position: absolute;
            width: 100px;
            height: 100px;
            opacity: 0.7;
            animation: float 10s infinite;
        }

        @keyframes float {
            0% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-20px);
            }
            100% {
                transform: translateY(0);
            }
        }

        .icon1 {
            top: 10%;
            left: 45%;
            animation-delay: 0s;
        }

        .icon2 {
            top: 10%;
            left: 80%;
            animation-delay: 2s;
        }

        .icon3 {
            top: 75%;
            left: 45%;
            animation-delay: 4s;
            width: 200px;
            height: 200px;
        }

        .icon4 {
            top: 80%;
            left: 80%;
            animation-delay: 6s;
        }

        .icon5 {
            top: 80%;
            left: 11%;
            animation-delay: 8s;
        }
        .icon6 {
            top: 45%;
            left: 80%;
            animation-delay: 10s;
        }
        .icon7 {
            top: 45%;
            left: 11%;
            animation-delay: 8s;
        }
        .icon8 {
            top: 10%;
            left: 11%;
            animation-delay: 8s;
        }
    </style>
</head>
<body>
    <div class="floating-icons">
        <img src="car-loan.png" alt="Icon 1" class="icon1">
        <img src="car-service.png" alt="Icon 2" class="icon2">
        <img src="car-services.png" alt="Icon 3" class="icon3">
        <img src="spray-gun.png" alt="Icon 4" class="icon4">
        <img src="tire.png" alt="Icon 5" class="icon5">
        <img src="spare-parts.png" alt="Icon 6" class="icon6">
        <img src="car-repair.png" alt="Icon 7" class="icon7">
        <img src="exhaust-pipe.png" alt="Icon 8" class="icon8">
    </div>

    <div class="message-box">
        <h1>Thank you for your service request...</h1>
<a href = "serviceStatus.html">Check your service status</a> 
    </div>
</body>
</html>

