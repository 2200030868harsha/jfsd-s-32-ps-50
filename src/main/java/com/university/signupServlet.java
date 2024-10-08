package com.university;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signupServlet")
public class signupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database connection parameters
    private static final String DB_URL = "jdbc:mysql://localhost:3306/sustainable_living"; // Change this to your database URL
    private static final String DB_USER = "root"; // Change to your DB username
    private static final String DB_PASSWORD = "Harshabhee@2004"; // Change to your DB password

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Retrieve form data
            String username = request.getParameter("username");
            String email = request.getParameter("email"); // New email parameter
            String password = request.getParameter("password");
            String role = request.getParameter("role"); // New role parameter

            // Establish database connection
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL query to insert user data
            String sql = "INSERT INTO users (username, email, password, role) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, email); // Save the email
            pstmt.setString(3, password); // Consider hashing the password for security
            pstmt.setString(4, role); // Save the role

            // Execute the query
            int rowsInserted = pstmt.executeUpdate();
            if (rowsInserted > 0) {
                System.out.println("A new user was inserted successfully!");
                response.sendRedirect("login.jsp"); // Redirect to login page
            } else {
                System.err.println("Failed to insert user.");
                response.sendRedirect("error.jsp"); // Redirect to error page
            }
        } catch (Exception e) {
            // Log the error to the console
            System.err.println("Error during signup: " + e.getMessage());
            e.printStackTrace(); // Print the stack trace to the console for debugging

            // Redirect to an error page
            response.sendRedirect("error.jsp");
        } finally {
            // Close the resources
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                System.err.println("Error closing resources: " + e.getMessage());
            }
        }
    }
}
