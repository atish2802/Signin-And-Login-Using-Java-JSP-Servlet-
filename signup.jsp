<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup-User-Auth</title>

<style>
        body { font-family: Arial, sans-serif; background: #f4f4f4; }
        .container { width: 350px; margin: 100px auto; background: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px #ccc; }
        h2 { text-align: center; }
        input { width: 100%; padding: 10px; margin: 8px 0; }
        button { width: 100%; padding: 10px; background: #28a745; color: #fff; border: none; cursor: pointer; }
        button:hover { background: #218838; }
        .msg { color: red; text-align: center; }
    </style>
</head>
<body>
	<h2>Signup</h2>
	<form action="SignupServlet" method="post">
		<input type="text" name="username" placeholder="Username" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>
        <input type="password" name="confirmPassword" placeholder="Confirm Password" required>
        <button type="submit">Signup</button>
	</form>
	
 	<p style="text-align:center;">Already have an account? <a href="index.jsp">Login here</a></p>
</body>
</html>