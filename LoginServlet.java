package com.auth.controller;

import java.io.IOException;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.auth.util.DBConnection;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String emailOrUsername = req.getParameter("username");
		String 	password = req.getParameter("password");
		
		try(Connection con = DBConnection.getConnection()){
			
				PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE email=? OR username=?");
	            ps.setString(1, emailOrUsername);
	            ps.setString(2, emailOrUsername);
	            ResultSet rs = ps.executeQuery();
	            
	            if(rs.next()) {
	                String storedPassword = rs.getString("password");

	                // Hash input password
	                MessageDigest md = MessageDigest.getInstance("SHA-256");
	                byte[] hash = md.digest(password.getBytes());
	                StringBuilder sb = new StringBuilder();
	                for(byte b : hash) sb.append(String.format("%02x", b));
	                String hashedPassword = sb.toString();

	                if(storedPassword.equals(hashedPassword)) {
	                    HttpSession session = req.getSession();
	                    session.setAttribute("username", rs.getString("username"));
	                    resp.sendRedirect("dashboard.jsp");
	                    return;
	                }
	            }
	            
	            req.setAttribute("error", "Invalid username/email or password");
	            req.getRequestDispatcher("index.jsp").forward(req, resp);

	        } catch(Exception e) {
	            e.printStackTrace();
	            req.setAttribute("error", "Something went wrong!");
	            req.getRequestDispatcher("index.jsp").forward(req, resp);
	        }
		}
	
}
