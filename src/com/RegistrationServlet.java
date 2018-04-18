package com;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.RegistrationBean;
import com.RegistrationDao;
public class RegistrationServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
public RegistrationServlet() {
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String FirstName = request.getParameter("firstname");
String LastName = request.getParameter("lastname");
String UserName = request.getParameter("username");
String Password = request.getParameter("password");
String Address = request.getParameter("address");
String Contact = request.getParameter("contact");

RegistrationBean registrationBean = new RegistrationBean();
registrationBean.setFirstName(FirstName);
registrationBean.setLastName(LastName);
registrationBean.setUserName(UserName);
registrationBean.setPassword(Password);
registrationBean.setAddress(Address);
registrationBean.setContact(Contact);

RegistrationDao registrationDao = new RegistrationDao();

String userRegistered = registrationDao.registrationUser(registrationBean);
if(userRegistered.equals("SUCCESS"))   
{
request.getRequestDispatcher("/ProjectSalesServlet.jsp").forward(request, response);
}
else
{
request.setAttribute("errMessage", userRegistered);
request.getRequestDispatcher("/Registration.jsp").forward(request, response);
}
}
}