package com.mvc.RegistrationServlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.Bean.RegistrationBean;
import com.mvc.Dao.RegistrationDao;
public class RegistrationServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

public RegistrationServlet() {
}

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String firstName = request.getParameter("firstname");
String lastName = request.getParameter("lastname");
String userName = request.getParameter("username");
String password = request.getParameter("password");
String address = request.getParameter("address");
String contact = request.getParameter("contact");

RegistrationBean registrationBean = new RegistrationBean();
registrationBean.setFirstName(firstName);
registrationBean.setLastName(lastName);
registrationBean.setUserName(userName);
registrationBean.setPassword(password);
registrationBean.setAddress(address);
registrationBean.setContact(contact);

RegistrationDao registrationDao = new RegistrationDao();

String userRegistered = registrationDao.registrationUser(registrationBean);
if(userRegistered.equals("SUCCESS"))   
{
request.getRequestDispatcher("/WelcomeServlet.jsp").forward(request, response);
}
else
{
request.setAttribute("errMessage", userRegistered);
request.getRequestDispatcher("/WelcomeServlet.jsp").forward(request, response);
}
}

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	
	String[] members = new String[4];
	 members[0] = "Jamie W.";
	 members[1] = "Evan D.";
	 members[2] = "Tim D.";
	 members[3] = "Hardware Plus";
	 
    request.setAttribute("members", members);
    request.getRequestDispatcher("/Registration.jsp").forward(request, response);
}
}