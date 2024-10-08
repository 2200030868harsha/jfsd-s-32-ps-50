<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Sustainable Living Education</title>
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
            justify-content: center;
            align-items: center;
            height: 100vh;
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

        .signup-container {
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.3);
            width: 100%;
            max-width: 400px;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h1 {
            margin-bottom: 20px;
            font-size: 32px;
            color: #2b6777;
        }

        label {
            font-size: 16px;
            margin-bottom: 5px;
            display: block;
            text-align: left;
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        select {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #2b6777;
            border: none;
            border-radius: 6px;
            color: white;
            font-size: 18px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #52ab98;
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

        /* Media query for smaller screens */
        @media (max-width: 600px) {
            .signup-container {
                width: 90%;
            }
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

    <div class="signup-container">
        <h1>Signup</h1>
        <form action="signupServlet" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="role">Role:</label>
            <select id="role" name="role" required>
                <option value="">Select Role</option>
                <option value="Admin">Admin</option>
                <option value="Content Creator">Content Creator</option>
                <option value="User">User (Student)</option>
                <option value="Mentor">Mentor/Facilitator</option>
                <option value="Guest">Guest User</option>
            </select>

            <button type="submit">Signup</button>
        </form>
        <a class="back-link" href="index.jsp">Back to Home</a>
    </div>

</body>
</html>
