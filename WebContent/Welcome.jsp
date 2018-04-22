<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<style>
        </style>
        <title>Project Portal</title>
    </head>
    <body>
    	<body bgcolor="#D3D3D3">
        <form method="post" action="LoginServlet">
           
            <td style="float:left"><image src="file:///G:/College/Winter%202018/CSC%20363/Computer%20logo.png" width="100px" height="100px"></image></td>
            
            <p style="float:right"><b> ${members[3]} <br> CSC 363<br>Final Project</b></p>

            <td style="clear:float"></td>
            <p style="align-text"left">Team</p>
            <p style="float:left">${members[0]} <br> ${members[1]} <br> ${members[2]} </p>
            <td style="close:float"></td>

            <center>
            <table  align="right" width="30%" cellpadding="3" >
                <thead>
                <div class="container">
                    <tr>
                        <th colspan="2">Login Here</th>
                    </tr>
                </thead>
                <tbody>
                
                                  <tr>
                    <form action="login" method="post">
                    <tr>
                    <td> </td><td> ${message}</td>
                    </tr>
                        <td>User Name</td>
                        <input type="hidden" name="action" value="add">  
                        <td><input type="text" name="uname" value="${user.user}" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="${user.pass}" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="RegistrationServlet.jsp">Register Here</a></td>
                    </tr>
                    </form>
                    </div>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>