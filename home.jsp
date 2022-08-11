<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jsp form</title>
</head>
<body>

<%!String n,r; %>
<%
	try
	{
		Class.forName("com.mysql.jdbc.Driver");


		//connection
		Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajpjsp","root","");
		
		//creating statement object
		Statement s = c.createStatement();
		n=request.getParameter("nam");
		r=request.getParameter("reg");
		s.executeUpdate("insert into display values('"+n+"','"+r+"')");
		out.println("The details are entered successfully");
		%>
		<table border="1">
		<tr><td>Name</td>
		<td>Reg-No </td></tr>
		<%
		ResultSet rs=s.executeQuery("select * from display");
		while(rs.next())
		{
			String name=rs.getString(1);
			String regno=rs.getString(2);%>
			<tr><td><%= name %></td>
			<td><%= regno %></td></tr>
		<%} %>
		</table>
	<% 	}
	catch(Exception e)
	{
		out.println(e.getMessage());	
	}
	%>
</body>
</html>