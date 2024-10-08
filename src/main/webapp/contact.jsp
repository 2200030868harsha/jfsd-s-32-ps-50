<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
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
            flex-direction: column;
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

        .contact-container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
            margin: 20px;
        }

        h1, h2 {
            color: #2b6777;
        }

        p {
            line-height: 1.6;
            color: #555;
            margin-bottom: 20px;
        }

        .contact-details {
            margin-bottom: 40px;
        }

        label {
            font-size: 16px;
            margin-bottom: 5px;
            display: block;
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        textarea {
            height: 100px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #2b6777;
            border: none;
            border-radius: 5px;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #52ab98;
        }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="index.jsp">Home</a>
        <div class="right">
            <a href="about.jsp">About</a>
            <a href="contact.jsp">Contact</a>
            <a href="login.jsp">Login</a>
            <a href="signup.jsp">Signup</a>
        </div>
    </div>

    <!-- Contact Form and Information -->
    <div class="contact-container">
        <h1>Contact Us</h1>

        <div class="contact-details">
            <h2>Get in Touch</h2>
            <p>If you have any questions, suggestions, or feedback, we'd love to hear from you! You can reach us by filling out the contact form below or through the following details:</p>
            <p><strong>Email:</strong> 2200030868@kluniversity.in</p>
            <p><strong>Phone:</strong> +91 8500264727</p>
        </div>

        <h2>Send Us a Message</h2>
        <form action="contactServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Message:</label>
            <textarea id="message" name="message" required></textarea>

            <button type="submit">Send Message</button>
        </form>
    </div>

</body>
</html>
