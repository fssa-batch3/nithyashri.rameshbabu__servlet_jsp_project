package com.fssa.mgoodapp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

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
	                
	                // Create a JSON object manually
	                JSONObject userJson = new JSONObject();
	                userJson.put("name", user.getName());
	                userJson.put("email", user.getEmail());
	                userJson.put("phone", user.getPhone());
	                userJson.put("password", user.getPassword());
	                userJson.put("profilePic", user.getProfilePic());
	                userJson.put("address", user.getAddress());
	                userJson.put("userId", user.getUserId());
	                
	                // Set the content type to JSON
	                response.setContentType("application/json");
	                response.setCharacterEncoding("UTF-8");
	                
	                out.print(userJson.toString());
	                out.flush();
	                out.close();
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

		        response.sendRedirect("./profilepage.jsp");
		    } catch (ServiceException e) {
		        response.sendRedirect("/profilepage.jsp?errorMessage=Update Failed: " + e.getMessage());
		    }
	}	
	
}





