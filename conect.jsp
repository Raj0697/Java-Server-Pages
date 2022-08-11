<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jsp</title>
</head>

<script type="text/javascript">
function raj()
{
	//name
	var n = document.getElementById("na").value;
	n=n.trim();
	if(n=="")
		{
			alert("Please enter the name");
			document.getElementById("na").focus();
			return false;			
		}
	else
		{
			
		}
	
	//reg no
	var r = document.getElementById("rg").value;
	r=r.trim();
	if(r=="")
		{
			alert("enter the register nmber");
			document.getElementById("rg").focus();
			return false;
		}
	else
		{
		
		}
}

</script>


<body>
<h1><center>CONNECTING TO THE DATABASE</center></h1>
<center>

<form method="post" action="home.jsp" onsubmit="return raj();">
<h1>NAME:  <input type="text" name="nam" id="na"/></h1><br><br>
<h1>REG-NO:<input type="text" name="reg" id="rg"/></h1><br><br>
<input type="submit" value="insert"/>
&ensp;&ensp;&ensp;
<input type="reset" value="clear"/>

</form>
</center>
</body>
</html>