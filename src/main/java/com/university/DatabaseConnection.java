package com.university; // Change to your package name

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/sustainable_living"; // Change if your database URL is different
    private static final String USER = "root"; // Replace with your database username
    private static final String PASSWORD = "Harshabhee@2004"; // Replace with your database password

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
