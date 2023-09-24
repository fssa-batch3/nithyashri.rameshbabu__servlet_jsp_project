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

	
}
