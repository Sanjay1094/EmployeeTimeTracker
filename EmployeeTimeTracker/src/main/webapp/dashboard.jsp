<%@page import="jakarta.servlet.http.HttpServletRequest"%>
<%@page import="jakarta.servlet.http.HttpServletResponse"%>
<%
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    } else {
        String role = (String) session.getAttribute("role");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <!-- Include Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <!-- Include Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <!-- Include Custom CSS for animations and styling -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(135deg, #1f1c2c, #928DAB);
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        h2 {
            margin-bottom: 20px;
        }

        .button {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            text-decoration: none;
            background: linear-gradient(45deg, #4A90E2, #357ABD);
            border-radius: 5px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            position: relative;
            overflow: hidden;
        }

        .button:hover {
            background-position: right center;
            transform: scale(1.1) rotate(3deg);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
            animation: glow 1s ease-in-out infinite alternate;
        }

        .button i {
            margin-right: 8px;
        }

        .button:active {
            transform: scale(0.95);
        }

        @keyframes backgroundAnimation {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        body {
            animation: backgroundAnimation 10s ease infinite;
            background-size: 200% 200%;
        }

        @keyframes glow {
            from {
                box-shadow: 0 0 10px #4A90E2, 0 0 20px #4A90E2, 0 0 30px #4A90E2, 0 0 40px #4A90E2;
            }
            to {
                box-shadow: 0 0 20px #357ABD, 0 0 30px #357ABD, 0 0 40px #357ABD, 0 0 50px #357ABD;
            }
        }
    </style>
</head>
<body>
    <div>
        <h2>Welcome, <%= session.getAttribute("username") %></h2>
        <%
            if ("Admin".equals(role)) {
        %>
        <a href="adminPage.jsp" class="button"><i class="fas fa-user-shield"></i> Admin Page</a><br>
        <%
            } else {
        %>
        <a href="taskPage.jsp" class="button"><i class="fas fa-tasks"></i> Task Management</a><br>
        <a href="associaterPage.jsp" class="button"><i class="fas fa-users"></i> View Associates</a><br>
        <%
            }
        %>
        <a href="LogoutServlet" class="button"><i class="fas fa-sign-out-alt"></i> Logout</a>
    </div>
</body>
</html>
<%
    }
%>
