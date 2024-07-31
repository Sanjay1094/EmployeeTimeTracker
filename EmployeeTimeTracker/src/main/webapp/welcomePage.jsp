<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME</title>
<style>
    @keyframes vibrantBackground {
        0% { background-position: 0% 0%; }
        50% { background-position: 100% 100%; }
        100% { background-position: 0% 0%; }
    }

    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(45deg, #ff6f61, #dcb4d8, #6dd5ed, #2193b0);
        background-size: 600% 600%;
        animation: vibrantBackground 20s ease infinite; /* Animated vibrant gradient background */
        color: #333;
        text-align: center;
        padding: 50px;
        margin: 0;
        position: relative;
        overflow: hidden;
    }

    body::before {
        content: '';
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: url('https://www.example.com/background-illustration.svg') no-repeat center center;
        background-size: cover;
        opacity: 0.1; /* Light overlay of illustration */
        z-index: -1;
    }

    h2 {
        color: #fff; /* White text color */
        margin-bottom: 30px;
        font-size: 2.5em;
        font-weight: 600;
        text-shadow: 2px 2px 4px rgba(0,0,0,0.3); /* More pronounced text shadow for better contrast */
    }

    .button {
        display: inline-block;
        padding: 15px 25px;
        margin: 15px;
        border-radius: 8px;
        color: white;
        text-decoration: none;
        font-size: 1.2em;
        font-weight: bold;
        transition: all 0.3s ease; /* Smooth transition for hover effects */
        box-shadow: 0 4px 8px rgba(0,0,0,0.2); /* Box shadow for depth */
        position: relative;
        overflow: hidden;
        text-align: center;
    }

    .button::before {
        content: '';
        position: absolute;
        top: 50%;
        left: 50%;
        width: 300%;
        height: 300%;
        background: rgba(255,255,255,0.3);
        transition: all 0.4s ease;
        transform: translate(-50%, -50%) scale(0);
        border-radius: 50%;
        z-index: 0;
    }

    .button:hover::before {
        transform: translate(-50%, -50%) scale(1);
    }

    .button:hover {
        transform: scale(1.05); /* Slightly enlarge button on hover */
        box-shadow: 0 6px 12px rgba(0,0,0,0.3); /* More pronounced shadow on hover */
    }

    .login {
        background: linear-gradient(to right, #28a745, #218838); /* Gradient background */
        position: relative;
        z-index: 1;
    }

    .register {
        background: linear-gradient(to right, #dc3545, #c82333); /* Gradient background */
        position: relative;
        z-index: 1;
    }

    .button i {
        font-size: 1.5em;
        display: block;
        margin-bottom: 10px;
    }

    .login i {
        color: #fff;
    }

    .register i {
        color: #fff;
    }

</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<h2>Welcome to EmployeeTimeTracker</h2>
<div>
    <a href="login.jsp" target="_blank" class="button login">
        <i class="fas fa-sign-in-alt"></i> Login Page
    </a>
    <a href="register.jsp" target="_blank" class="button register">
        <i class="fas fa-user-plus"></i> Register Page
    </a>
</div>
</body>
</html>
