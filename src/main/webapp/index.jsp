<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sustainable Living Education</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e8f5e9; /* Light green background */
            color: #424242; /* Dark gray text */
            line-height: 1.6;
        }

        /* New Navbar Styling */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(43, 103, 119, 0.8); /* Semi-transparent background for visibility */
            padding: 15px 30px;
            position: sticky;
            top: 0;
            width: 100%;
            z-index: 1000;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar .logo img {
            height: 50px; /* Adjust height as needed */
            width: auto; /* Maintain aspect ratio */
        }

        .navbar ul {
            list-style-type: none;
            display: flex;
        }

        .navbar ul li {
            position: relative;
        }

        .navbar ul li a {
            display: block;
            padding: 10px 20px;
            color: white;
            text-decoration: none;
            font-size: 18px;
            transition: background-color 0.3s ease;
        }

        .navbar ul li a:hover {
            background-color: #52ab98; /* Light green on hover */
            color: white;
        }

        /* Hero section styling */
        .hero {
            text-align: center;
            padding: 60px 20px;
            color: white;
            height: 60vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            background-image: url('https://www.learningroutes.in/_next/image?url=https%3A%2F%2Faskusedu.com%2Fblogdashboard%2Fwp-content%2Fuploads%2F2024%2F01%2Frole-of-education-in-promoting-suatainability.webp&w=1920&q=75'); /* Background image */
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            position: relative; /* Position relative for overlay */
        }

        .hero::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5); /* Dark overlay for readability */
            z-index: 1; /* Place it behind the text */
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7); /* Text shadow for readability */
            z-index: 2; /* Bring text above overlay */
            transition: transform 0.3s ease, color 0.3s ease; /* Transition for hover effect */
        }

        .hero h1:hover {
            transform: scale(1.05); /* Slightly enlarge on hover */
            color: #ffeb3b; /* Change color on hover */
        }

        .hero p {
            font-size: 22px;
            width: 70%;
            margin: 0 auto;
            text-align: center;
            font-weight: 300; /* Light font weight */
            z-index: 2; /* Bring text above overlay */
        }

        /* Styling the main content */
        .content {
            padding: 40px 20px;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.9); /* White background with transparency */
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
            border-radius: 8px; /* Rounded corners */
            margin: 20px auto;
            max-width: 1200px; /* Centering the content */
        }

        .content h2 {
            font-size: 36px;
            color: #388e3c; /* Dark green */
            margin-bottom: 20px;
        }

        .content p {
            font-size: 18px;
            width: 80%;
            margin: 0 auto;
            line-height: 1.8;
            color: #666; /* Medium gray */
        }

        /* Footer */
        .footer {
            background-color: #388e3c; /* Dark green */
            color: white;
            text-align: center;
            padding: 20px;
            position: relative;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <div class="navbar">
        <div class="logo">
            <img src="https://media.istockphoto.com/id/1359659563/vector/planet-earth-with-leaves-in-a-circle-green-globe-environmental-social-governance.jpg?s=612x612&w=0&k=20&c=AyyUx4eRlEBaig3Va-aFLFuOGHBxXBNJ7SHQqTWBkYg=" alt="Sustainable Living Logo">
        </div>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="about.jsp">About</a></li>
            <li><a href="#">Account</a>
                <div class="dropdown">
                    <%
                        HttpSession session2 = request.getSession(false); // Get session without creating a new one
                        if (session2 != null && session2.getAttribute("username") != null) {
                            // User is logged in
                    %>
                            <a href="logoutServlet">Logout</a>
                    <% 
                        } else { 
                    %>
                            <a href="login.jsp">Login</a>
                    <% 
                        } 
                    %>
                    <a href="signup.jsp">Signup</a>
                </div>
            </li>
            <li><a href="contact.jsp">Contact</a></li>
        </ul>
        <%
            // Display welcome message if user is logged in
            if (session2 != null && session2.getAttribute("username") != null) {
                String username = (String) session2.getAttribute("username");
        %>
                <div class="welcome">Hello, <%= username %></div>
        <%
            }
        %>
    </div>

    <!-- Hero Section -->
    <div class="hero">
        <h1 id="dynamic-title">Welcome to Sustainable Living Education</h1>
        <p>Empowering you to make eco-friendly choices and live sustainably.</p>
    </div>

    <!-- Main Content -->
    <div class="content">
        <h2>Our Features</h2>
        <p>Explore the various ways we help you learn about sustainability.</p>
        <!-- Your feature cards go here -->
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2024 Sustainable Living Education. All Rights Reserved.</p>
    </div>

    <script>
        const titleElement = document.getElementById('dynamic-title');
        const words = [
            "Welcome to Sustainable Living Education",
            "Eco-Friendly Choices",
            "Live Sustainably",
            "Empower Yourself",
            "Make a Difference"
        ];
        let wordIndex = 0;

        function changeTitle() {
            titleElement.textContent = words[wordIndex];
            wordIndex = (wordIndex + 1) % words.length; // Loop through the words
        }

        setInterval(changeTitle, 2000); // Change title every 2 seconds
    </script>
    
</body>
</html>
