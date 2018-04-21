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
    background-color: #f2f4f7;
    text-align: left;
}

table, th, td {
   border: 1px solid black;
}
.textright{float:right;padding:10px}
body{background-color:#f2f4f7}
</style>
<title>Hardware Info</title>


</head>
<body>
<header>

   <div class="textleft"><img src="C:\Users\admin\Downloads\logo.png" alt="Logo"width="80" height="80">
   
 <div class="textright">Project Name<br>Welcome ${sessionScope.UserName}<form action="./Logout" method="post">
    <input type="submit" name="Logout" value="Logout" />
</form></div></div>

</header>

<div class="container">
Project Detail<br>
This web page will allow users to browse various motherboards. Select motherboard to view specifications.
</div>
<p></p>


<div class="container">
<form action="ProjectDetail.jsp" method="post" id="price">
<select name="pid" form="price">
  <option value="low">low</option>
  <option value="medium">medium</option>
  <option value="high">high</option>
  <option value="highest">highest</option>
</select>
<input type="submit" name="details" value="More" />
<table>
<tr><th>Motherboard</th><th>Image</th><th>Cost</th></tr>
<c:forEach items="${Products}" var="prd" varStatus="status" > 
    <tr> 
    <td>${prd.mfgName}</td>
    <td><image src=${prd.imagePath} width="100px" height="100px"></image></td>
    <td>$ ${prd.cost} </td>
 </tr>  

</c:forEach>
</table>
</form>
</div>
<footer>Developed by CSC363 Students 2018</footer>


</body>
</html>