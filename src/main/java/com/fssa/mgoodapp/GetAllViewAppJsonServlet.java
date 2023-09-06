package com.fssa.mgoodapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.mgood.model.AppointmentsModel;
import org.json.*;

/**
 * Servlet implementation class GetAllViewAppJsonServlet
 */
@WebServlet("/GetAllViewAppJsonServlet")
public class GetAllViewAppJsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<AppointmentsModel> app = new ArrayList<AppointmentsModel> ();
		PrintWriter out = response.getWriter();
		
//		app.add(new AppointmentsModel("Nithya","Ramesh","nithi@gmail.com", "9791858933","14:30:00", "Archanahos"));
//		app.add(new AppointmentsModel("Lakshmi","karthi","karthi@gmail.com", "9791858933","14:30:00", "Archanahos"));
//		app.add(new AppointmentsModel("gk","saro","saro@gmail.com", "9791858933","14:30:00", "Archanahos"));
		JSONArray apps =  new JSONArray(app);
		out.print(apps.toString());
		
		
//		request.setAttribute("AppointmentList", app);
//		RequestDispatcher dispatcher = request.getRequestDispatcher(".jsp");
//		dispatcher.forward(request, response);
	}

	}


