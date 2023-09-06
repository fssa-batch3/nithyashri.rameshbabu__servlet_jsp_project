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

		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String loggedInEmail = (String) session.getAttribute("loggedInEmail");

		AppointmentService appservice = new AppointmentService();
		
		UserService userservice = new UserService();
		
		try {
			
			UserModel user = userservice.findUserByEmailService(loggedInEmail);
			
			String docname = request.getParameter("docname");
			String hosname = request.getParameter("hosname");
			String time = request.getParameter("time");
			 
			app.setDoctorName(docname);
			app.setHospitalName(hosname);
			app.setTime(time);
			user.setUserId(user.getUserId());
			app.setUser(user);
			appservice.createAppointment(app);
			out.append("Created appointment Successfully");
			response.sendRedirect("ViewAppointments");
 
		}

		catch (ServiceException e) {
			response.sendRedirect("createAppointment.jsp?errorMessage=Create Appointment failed : " + e.getMessage());
			out.println("Registration failed : " + e.getMessage());
		}
	}

}
