<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Jsp demo</title>
</head>
<body>
<% out.println("hello world");%>
<%! int a=10; %>
<h5>The power of 2 is:</h5>
<%= Math.pow(a,2) %>
</body>
</html>