<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>
	<h2>Something went wrong ! </h2>
	 <p><%= request.getAttribute("error") != null ? request.getAttribute("error") : "Unknown error" %></p>
    <a href="index.jsp">Go back to Login</a>
</body>
</html>