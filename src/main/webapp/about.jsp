<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <style>
        /* Basic reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            flex-direction: column; /* Change to column for navbar and content stacking */
            align-items: center;
            color: #333;
        }

        .navbar {
            background-color: #2b6777; /* Dark green */
            width: 100%; /* Full width */
            padding: 10px 20px;
            position: sticky; /* Make navbar sticky */
            top: 0;
            z-index: 1000; /* Ensure it stays above other content */
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

        .about-container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
            margin: 20px; /* Space from navbar */
        }

        h1, h2 {
            color: #2b6777;
        }

        p {
            line-height: 1.6;
            color: #555;
            margin-bottom: 20px;
        }

        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #2b6777;
            text-decoration: none;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <div class="right">
            <a href="about.jsp">About</a>
            <a href="login.jsp">Login</a>
            <a href="signup.jsp">Signup</a>
        </div>
    </div>

    <div class="about-container">
        <h1>About Us</h1>
        <h2>Our Mission</h2>
        <p>
            At Sustainable Living Education, we are dedicated to empowering individuals with the knowledge 
            and tools to make eco-friendly choices in their daily lives. Our mission is to inspire sustainable living 
            practices that contribute to a healthier planet for future generations.
        </p>

        <h2>What We Offer</h2>
        <p>
            We provide a variety of resources, lessons, and project ideas that help individuals understand 
            the importance of sustainability and how they can make a positive impact. From reducing waste to 
            embracing renewable energy, our platform offers comprehensive guidance for all.
        </p>

        <h2>Join Us</h2>
        <p>
            Become part of our community and embark on a journey towards sustainable living. Together, we can 
            make a difference!
        </p>

        <a class="back-link" href="index.jsp">Back to Home</a>
    </div>

</body>
</html>
