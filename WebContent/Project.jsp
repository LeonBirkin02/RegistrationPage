<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
div.container {
    width: 100%;
    border: 1px solid gray;
    padding:5px;
}

header {
    padding: 1em;
    color: black;
    background-color: #f2f4f7;
    text-align: left;
}

footer {
    padding: 1em;
    color: black;
    background-color: ##f2f4f7;
    text-align: left;
}
table {
	width: 100%;
    text-align: center;
    border: 1px solid black;
    background-color: white;
    font-family:courier;
}
th,td{
	border: 1px solid gray;

}
th {
    background-color: #808f9e;
    color: white;
   
}

.textright{float:right;padding:10px}
body{background-color:#f2f4f7}
</style>
<title>Motherboards</title>


</head>
<body>
<header>

   <div class="textleft"><img src="C:\Users\admin\Downloads\logo.png" alt="Logo"width="80" height="80">
   
 <div class="textright" >Project Name</br>Welcome ${sessionScope.UserName}<form action="./Logout" method="post">
    <input type="submit" name="Logout" value="Logout" />
</form></div></div>

</header>

</div>

<div class="container">
<b>Project Detail:</b></br>
This web page will allow users to browse various motherboards. Select motherboard to view specifications.
</div>
<p></p>


<div class="container">

<table>
<tr><th>Motherboard</th><th>Image</th><th>Cost</th><th>Details</th></tr>
  <tr>
    <td>${Products[0].mfgName}</td>
    <td><image src=${Products[0].imagePath} width="100px" height="100px"></image></td>
    <td>$ ${Products[0].cost}</td>
    <td> 
 <a href="ProjectDetail.jsp">More</a></td> </tr>
<tr>
    <td>${Products[1].mfgName}</td>
    <td><image src=${Products[1].imagePath} width="100px" height="100px"></image></td>
    <td>$ ${Products[1].cost}</td>
    <td><a href="ProjectDetail2.jsp">More</a>
    </td> </tr>
<tr>
    <td>${Products[2].mfgName}</td>
    <td><image src=${Products[2].imagePath} width="100px" height="100px"></image></td>
    <td>$ ${Products[2].cost}</td>
    <td><a href="ProjectDetail3.jsp">More</a></td> </tr>
<tr>
    <td>${Products[3].mfgName}</td>
    <td><image src=${Products[3].imagePath} width="100px" height="100px"></image></td>
    <td>$ ${Products[3].cost}</td>
    <td><a href="ProjectDetail4.jsp">More</a></td> </tr>



</table>
</div>
<footer>Developed by CSC363 Students 2018</footer>


</body>
</html>