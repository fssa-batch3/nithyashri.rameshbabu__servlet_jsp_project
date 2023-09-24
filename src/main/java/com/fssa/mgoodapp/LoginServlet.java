package com.fssa.mgoodapp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.mgood.model.UserModel;
import com.fssa.mgood.service.UserService;
import com.fssa.mgood.service.exception.ServiceException;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		UserModel user = new UserModel();
		 user.setEmail(email);
		 user.setPassword(password);
		 
		PrintWriter out = response.getWriter();
		UserService userservice = new UserService();
		try {
			UserModel user1 = userservice.findUserByEmailService(email);
			userservice.loginUser(user);
			HttpSession session = request.getSession();
			session.setAttribute("loggedInEmail", email);
			session.setAttribute("userId", user1.getUserId());
			session.setAttribute("user", user1);
	
			RequestDispatcher dispatcher = request.getRequestDispatcher("doctor0.jsp");
	        dispatcher.forward(request, response);
			
		} catch (ServiceException e) {
			response.sendRedirect("login.jsp?errorMessage= " + e.getMessage());
		}
		
	}

}
