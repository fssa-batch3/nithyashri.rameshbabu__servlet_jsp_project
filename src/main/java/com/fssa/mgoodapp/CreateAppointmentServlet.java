package com.fssa.mgoodapp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.mgood.model.AppointmentsModel;
import com.fssa.mgood.model.UserModel;
import com.fssa.mgood.service.AppointmentService;
import com.fssa.mgood.service.UserService;
import com.fssa.mgood.service.exception.ServiceException;

/**
 * Servlet implementation class CreateAppointmentServlet
 */
@WebServlet("/CreateAppointmentServlet")
public class CreateAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AppointmentsModel app = new AppointmentsModel();
		HttpSession session = request.getSession();
		String loggedInEmail = (String) session.getAttribute("loggedInEmail");

		AppointmentService appservice = new AppointmentService();
		
		UserService userservice = new UserService();
		
		String docname = request.getParameter("docname");
		String hosname = request.getParameter("hosname");
		String time = request.getParameter("time");
		try {
			
			UserModel user = userservice.findUserByEmailService(loggedInEmail);
			
			
			 
			app.setDoctorName(docname);
			app.setHospitalName(hosname);
			app.setTime(time);
			user.setUserId(user.getUserId());
			app.setUser(user);
			appservice.createAppointment(app);
			response.sendRedirect("ViewAppointments");
 
		}

		catch (ServiceException e) {
			

			request.setAttribute("docname", docname);
			request.setAttribute("hosname", hosname);
			request.setAttribute("time", time);
			request.setAttribute("errorMessage", "Create Appointment failed: " + e.getMessage());
			request.getRequestDispatcher("createAppointment.jsp").forward(request, response);
		
			
		}
	}

}
