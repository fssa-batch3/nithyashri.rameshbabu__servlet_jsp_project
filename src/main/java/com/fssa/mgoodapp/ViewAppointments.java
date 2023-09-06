package com.fssa.mgoodapp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.mgood.model.AppointmentsModel;
import com.fssa.mgood.service.AppointmentService;
import com.fssa.mgood.service.exception.ServiceException;

/**
 * Servlet implementation class ViewAppointments
 */
@WebServlet("/ViewAppointments")
public class ViewAppointments extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AppointmentService appservice = new AppointmentService();
		HttpSession session = request.getSession();
		String loggedInEmail = (String) session.getAttribute("loggedInEmail");
		try {
			List<AppointmentsModel> app = appservice.viewAppointmentService();
			List<AppointmentsModel> userAppointments = new ArrayList<>();
			for (AppointmentsModel appointment : app) {
				if (loggedInEmail.equals(appointment.getUser().getEmail())) {
					userAppointments.add(appointment);
				}
			}
			request.setAttribute("APPOINTMENT_LIST", userAppointments);
			RequestDispatcher dispatcher = request.getRequestDispatcher("viewAppointments.jsp");
			dispatcher.forward(request, response);
		} catch (ServiceException e) {
			response.sendRedirect("viewAppointments.jsp?errorMessage=View Appointment failed : " + e.getMessage());

		}

	}

}
