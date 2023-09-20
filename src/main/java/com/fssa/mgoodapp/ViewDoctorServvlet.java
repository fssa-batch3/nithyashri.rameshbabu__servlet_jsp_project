package com.fssa.mgoodapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;

import com.fssa.mgood.model.DoctorsModel;
import com.fssa.mgood.service.DoctorService;
import com.fssa.mgood.service.exception.ServiceException;

/**
 * Servlet implementation class ViewDoctorServvlet
 */


@WebServlet("/ViewDoctorServvlet")
public class ViewDoctorServvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DoctorService docservice = new DoctorService();
		 try {
			List<DoctorsModel> doctors = docservice.doctorViewService();
			/*
			 * HttpSession session = request.getSession(false);
			 * session.setAttribute("doctorsdetails", doctors);
			 */
			PrintWriter out = response.getWriter();
			JSONArray apps =  new JSONArray(doctors);
			out.print(apps.toString());
            out.flush();
            out.close();
		} catch (ServiceException e) {
			e.printStackTrace();
		}	
	}
}

