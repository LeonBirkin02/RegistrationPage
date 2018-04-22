<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
div.container {
    //width: 100%;
   // border: 1px solid gray;
  //  padding:5px;

}

table, th, td {
   //border: 1px solid black;
}
.textright{float:right;padding:10px}

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
<form name="form" action="RegistrationServlet" method="post" onsubmit="return validate()">
<td style="float:left"><image src="file:///G:/College/Winter%202018/CSC%20363/Computer%20logo.png" width="100px" height="100px"></image></td>
<p style="float:right"><b> ${members[3]} <br> CSC 363<br>Final Project</b></p>

            <td style="clear:float"></td>
            <p style="align-text"left">Team</p>
            <p style="float:left">${members[0]} <br> ${members[1]} <br> ${members[2]} </p>
            <td style="close:float"></td>

<table style="float:right">
<tr>
<td>First Name</td>
<td><input type="text" name="firstName" /></td>
</tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lastName" /></td>
</tr>
<tr>
<td>User Name</td>
<td><input type="text" name="userName" /></td>
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
<input type="reset" value="Reset"></input></td>
</tr>
</table>
</form>
</body>
</html>