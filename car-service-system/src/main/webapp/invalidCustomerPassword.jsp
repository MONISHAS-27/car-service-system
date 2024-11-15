<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Register</title>
<link rel="stylesheet" href="Style.css">
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
            overflow: hidden;
            position: relative;
            background: linear-gradient(to bottom right, #348AA5, #f9f9f9); /* Soft gradient for depth */
        }

        /* Main container styling */
        .login-box {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 400px;
            border-radius: 10px;
            overflow: hidden;
            padding: 15px;
        }

        /* Right section with login options */
        .login-box .right-panel {
           
            width: 100%;
            padding: 20px;
            position: relative;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        /* Welcome Text */
        .right-panel h1 {
            font-size: 1.8em;
            color: #333;
            margin-bottom: 1em;
            text-align: center;
        }

        /* Form Styling */
        .right-panel form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .right-panel table {
            width: 100%;
            margin-bottom: 1em;
        }

        .right-panel table td {
            padding: 8px;
        }

        .right-panel input[type="text"],
        .right-panel input[type="password"],
        .right-panel input[type="email"] {
            width: 100%;
            padding: 5px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #E0DCDC;
        }

        /* Innovative Button Styling */
        .right-panel input[type="submit"] {
            background-color: #3b4a5a;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s ease, transform 0.2s;
        }

        .right-panel input[type="submit"]:hover {
            background-color: #2c3a47;
            transform: scale(1.05); /* Slight zoom effect */
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3); /* Shadow on hover */
        }

        /* Gear Icon Animation */
        @keyframes spin {
            from { transform: rotate(0deg); }
            to { transform: rotate(360deg); }
        }

        .gear-icon {
            position: absolute;
            bottom: 10%;
            left: 5%;
            width: 300px;
            height: 300px;
            opacity: 0.2;
            animation: spin 20s linear infinite;
        }

        .gear-icon-2 {
            position: absolute;
            top: 10%;
            right: 5%;
            width: 200px;
            height: 200px;
            opacity: 0.2;
            animation: spin 15s linear infinite reverse;
        }

        /* Background Overlay */
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.2); /* Subtle overlay */
        }

        @keyframes spinReverse {
            from { transform: rotate(360deg); }
            to { transform: rotate(0deg); }
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <!-- Background gear animations for effect -->
    <img src="steering-wheel.png" alt="Gear" class="gear-icon">
    <img src="steering-wheel.png" alt="Gear" class="gear-icon-2">

    <!-- Right Panel with Login Links -->
    <div class="login-box">
        <div class="right-panel">
            <h1 style="text-align: center;">Invalid Password</h1>

            <form action="/car-service-system/CustomerLogin">
                <table style="text-align: left; margin: 0 auto;">
                    
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="username" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" /></td>
                    </tr>
                    
                </table>
                <br> 
                <input type="submit" value="Login" />
            </form>
            
        </div>
    </div>
</body>
</html>
