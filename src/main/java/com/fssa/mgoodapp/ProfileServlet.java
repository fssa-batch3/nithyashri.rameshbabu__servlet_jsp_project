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
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserService userService = new UserService();
PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String loggedInEmail = (String) session.getAttribute("loggedInEmail");
		if (loggedInEmail == null) {
			response.sendRedirect("login.jsp?errorMessage=Kindly Login to Continue");
		} else {
			try {
				UserModel user = userService.findUserByEmailService(loggedInEmail);
				out.println(user);
				request.setAttribute("user", user);

				RequestDispatcher dispatcher = request.getRequestDispatcher("profilepage.jsp");
				dispatcher.forward(request, response);
			} catch (ServiceException e) {
				response.sendRedirect("profilepage.jsp?errorMessage=User profile view Failed : " + e.getMessage());
			}
		}
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name").trim();
		String email = request.getParameter("mail").trim();
		String password = request.getParameter("pass").trim();
		String phone = request.getParameter("mob").trim();
		String address = request.getParameter("add").trim();
		String image = request.getParameter("img").trim();
			
		  try {
		        UserService userService = new UserService();
		        UserModel user= new UserModel();
		        user.setName(name);
		        user.setEmail(email);
		        user.setPassword(password);
		        user.setPhone(phone);
		        user.setAddress(address);
		        user.setProfilePic(image);
		        
		        userService.updateUser(user);

		        response.sendRedirect("ProfileServlet");
		    } catch (ServiceException e) {
		        response.sendRedirect("/profilepage.jsp?errorMessage=Update Failed: " + e.getMessage());
		    }
	}	
	
}





