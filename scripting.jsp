<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>scriplet</title>
</head>
<body>
<table border="1">
<% for(int i=0;i<10;i++)
	{%>
	<tr>
		<td><%=i%></td>
		<td><%=i+1 %></td>
	</tr>
	<%} %>	
</table>
</body>
</html>