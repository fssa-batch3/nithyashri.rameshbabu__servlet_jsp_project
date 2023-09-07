package com.fssa.mgoodapp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.mgood.model.UserModel;
import com.fssa.mgood.service.UserService;
import com.fssa.mgood.service.exception.ServiceException;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 
		UserModel user = new UserModel();
		String name = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		PrintWriter out = response.getWriter();
        
		 user.setEmail(email);
		 user.setName(name);
		 user.setPassword(password);
		 user.setPhone(phone);
		 
		UserService userservice = new UserService();
		try{
			userservice.registerUser(user);
			out.append("Registration Successfull");
			response.sendRedirect("login.jsp"); 
			
		}
		
		catch(ServiceException e){
			response.sendRedirect("register.jsp?errorMessage= " + e.getMessage());

		}
	}

}
