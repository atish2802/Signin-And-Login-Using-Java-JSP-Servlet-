<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <style>
        body { font-family: Arial, sans-serif; background: #eef; text-align: center; margin-top: 100px; }
        a { display: inline-block; padding: 10px 20px; background: #dc3545; color: white; text-decoration: none; border-radius: 5px; }
        a:hover { background: #a71d2a; }
    </style>
</head>
<body>
<%
if(session.getAttribute("username") == null){
    response.sendRedirect("index.jsp");
}
%>
<h2>Welcome, <%= session.getAttribute("username") %>!</h2>
<a href="LogoutServlet">Logout</a>

</body>
</html>