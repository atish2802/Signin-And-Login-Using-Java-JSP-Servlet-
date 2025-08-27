<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login-UserAuth</title>

 <style>
        body { font-family: Arial, sans-serif; background: #f4f4f4; }
        .container { width: 350px; margin: 100px auto; background: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 0 10px #ccc; }
        h2 { text-align: center; }
        input { width: 100%; padding: 10px; margin: 8px 0; }
        button { width: 100%; padding: 10px; background: #007bff; color: #fff; border: none; cursor: pointer; }
        button:hover { background: #0056b3; }
        .msg { color: red; text-align: center; }
        .success { color: green; text-align: center; }
    </style>
</head>
<body>
	<div class="container">
		<h2>Login</h2>

		<% if(request.getParameter("success") != null) { %>
		<p class="success">Signup successful! Please login.</p>
		<% } %>

		<% if(request.getAttribute("error") != null) { %>
		<p class="msg"><%= request.getAttribute("error") %></p>
		<% } %>

		<form action="LoginServlet" method="post">
			<input type="text" name="username" placeholder="Email or Username"
				required> <input type="password" name="password"
				placeholder="Password" required>
			<button type="submit">Login</button>
		</form>

		<p style="text-align: center;">
			Don't have an account? <a href="signup.jsp">Signup here</a>
		</p>
	</div>
</body>
</html>