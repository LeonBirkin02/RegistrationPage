package com.mvc.LoginServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.User.User;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext context = getServletContext();
	    String user = request.getParameter("user");

	    if (user == null || user.equals("")){
	        context.log("No user received",new IllegalStateException("Missing Parameter"));
	    }else{
	        context.log("Here is the user :"+user);
	    }

	    PrintWriter out = response.getWriter();
	    out.println("Log Testing.");
	 doPost(request,response);
 }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String url = "/WelcomeServlet.jsp";
        
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        // perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/Project.jsp";    // the "join" page
        } 
        else if (action.equals("add")) {
            // get parameters from the request
            String user = request.getParameter("username");
            String pass = request.getParameter("password");
            
            // store data in User object
            User login = new User(user,pass);
            		
            // validate the parameters
            String message;
            if (user == null || pass == null ||user.isEmpty() || pass.isEmpty() ) {
                message = "Enter the valid values.";
                url = "/WelcomeServlet";
            } 
            else {
                message = "";
                url = "/Project.jsp";
               // ProjectServlet.insert(user);
            }
            request.setAttribute("login", login);
            request.setAttribute("message", message);
        }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}	


