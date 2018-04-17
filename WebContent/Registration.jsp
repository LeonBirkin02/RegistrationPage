<pre><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
table {
	border-style: solid;
}
</style>

<title>Registration</title>
<script> 
function validate()
{ 
var firstname = document.form.firstname.value;
var lastname = document.form.lastname.value;
var username = document.form.username.value; 
var password = document.form.password.value;
var address = document.form.address.value;
var contact = document.form.contact.value;
if (firstname==null || firstname=="")
{ 
alert("First Name can't be blank"); 
return false; 
}
else if (lastname==null || lastname=="")
{ 
alert("Last Name can't be blank"); 
return false; 
}
else if (username==null || username=="")
{ 
alert("Username can't be blank"); 
return false; 
}
else if (password==null || password=="")
{ 
alert("Password can't be blank"); 
return false; 
}
else if(password.length<6)
{ 
alert("Password must be at least 6 characters long."); 
return false; 
}
else if (address==null || address=="")
{ 
alert("Address can't be blank"); 
return false; 
}
else if (contact==null || contact=="")
{ 
alert("Contact can't be blank"); 
return false; 
}
} 
</script> 
</head>
<body bgcolor="#D3D3D3">
<h2> Registration </h2>
<form name="form" action="RegistrationServlet" method="post" onsubmit="return validate()">
<table style="float:right">
<tr>
<td>First Name</td>
<td><input type="text" name="firstname" /></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lastname" /></td>
</tr>
<tr>
<td>User Name</td>
<td><input type="text" name="username" /></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="password" /></td>
</tr>
<tr>
<td>Address</td>
<td><input type="text" name="address" /></td>
</tr>
<tr>
<td>Contact</td>
<td><input type="text" name="contact" /></td>
</tr>

<tr>
<td><%=(request.getAttribute("errMessage") == null) ? ""
: request.getAttribute("errMessage")%></td>
</tr>
<tr>
<td></td>
<td><input type="submit" value="Submit"></input>
</tr>
</table>
</form>
</body>
</html>