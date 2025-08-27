package com.auth.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    private static final String url = "jdbc:mysql://localhost:3306/user_auth";
    private static final String username = "root";
    private static final String password = "Atish@123";

   
    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, username, password);
    }
    
}