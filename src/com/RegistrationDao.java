package com;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.RegistrationBean;
import com.RegistrationDB;
public class RegistrationDao {
public String registrationUser(RegistrationBean registrationBean)
{
String firstName = registrationBean.getFirstName();
String lastName = registrationBean.getLastName();
String userName = registrationBean.getUserName();
String password = registrationBean.getPassword();
String address = registrationBean.getAddress();
String contact = registrationBean.getContact();
Connection con = null;
PreparedStatement preparedStatement = null;
try
{
con = RegistrationDB.createConnection();
String query = "insert into users(SlNo,firstName,lastName,userName,password,address,contact) values (NULL,?,?,?,?,?,?)"; 
preparedStatement = con.prepareStatement(query); 
preparedStatement.setString(1, firstName);
preparedStatement.setString(2, lastName);
preparedStatement.setString(3, userName);
preparedStatement.setString(4, password);
preparedStatement.setString(5, address);
preparedStatement.setString(6, contact);
int i= preparedStatement.executeUpdate();
if (i!=0) 
return "SUCCESS"; 
}
catch(SQLException e)
{
e.printStackTrace();
}
return "Oops.. Something went wrong there..!";  
}
}