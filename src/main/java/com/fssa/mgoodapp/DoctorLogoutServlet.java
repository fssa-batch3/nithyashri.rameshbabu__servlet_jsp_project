package com.fssa.mgoodapp;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DoctorLogoutServlet
 */
@WebServlet("/DoctorLogoutServlet")
public class DoctorLogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession(false);

	    if (session != null) { 
	        session.invalidate();
	    }

	    // Redirect the user to a logout confirmation page or any other page
	    response.sendRedirect("./docsign.jsp"); // Change the URL as needed
	}


}
