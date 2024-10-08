<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home - Sustainable Living Education</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to bottom, rgba(43, 103, 119, 0.8), rgba(82, 171, 152, 0.8)), url('https://images.unsplash.com/photo-1558021212-51b6ecfa0dbb');
            background-size: cover;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            color: #333;
        }

        .navbar {
            background-color: rgba(0, 0, 0, 0.7); /* Transparent background */
            width: 100%; /* Full width */
            padding: 10px 20px;
            position: fixed; /* Navbar is fixed at the top */
            top: 0;
            z-index: 1000;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
        }

        .navbar a:hover {
            background-color: #52ab98; /* Light green on hover */
            color: white;
        }

        .navbar .right {
            float: right;
        }

        .content {
            margin-top: 80px; /* To prevent content from being hidden behind navbar */
            text-align: center;
            max-width: 800px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.3);
        }

        h1 {
            color: #2b6777;
        }

        footer {
            margin-top: auto;
            padding: 20px;
            background-color: rgba(0, 0, 0, 0.7);
            color: white;
            width: 100%;
            text-align: center;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <div class="right">
            <% 
                HttpSession session1 = request.getSession(false);
                if (session1 != null) {
                    String userRole = (String) session.getAttribute("userRole");
                    if (userRole != null) {
                        out.println("<span style='color: white; margin-right: 15px;'>Hello, " + userRole + "</span>");
                        out.println("<a href='logout.jsp'>Logout</a>"); // Logout link to end the session
                    } else {
                        out.println("<a href='login.jsp'>Login</a>");
                        out.println("<a href='signup.jsp'>Signup</a>");
                    }
                } else {
                    out.println("<a href='login.jsp'>Login</a>");
                    out.println("<a href='signup.jsp'>Signup</a>");
                }
            %>
        </div>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h1>Welcome to the Admin Dashboard</h1>
        <p>Manage users, content, and resources for Sustainable Living Education.</p>
        <!-- Add more admin-specific functionalities here -->
    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Sustainable Living Education. All rights reserved.</p>
    </footer>

</body>
</html>
