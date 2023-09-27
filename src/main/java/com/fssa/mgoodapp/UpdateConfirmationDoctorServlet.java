package com.fssa.mgoodapp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.mgood.model.DoctorsModel;
import com.fssa.mgood.service.DoctorService;
import com.fssa.mgood.service.exception.ServiceException;

/**
 * Servlet implementation class UpdateConfirmationApproveServlet
 */
@WebServlet("/UpdateConfirmationDoctorServlet")
public class UpdateConfirmationDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String confirmation = request.getParameter("confirmation");
	String doctor_id = request.getParameter("doctor_id");
	int docid = Integer.parseInt(doctor_id);
	DoctorService docservice = new DoctorService();
	DoctorsModel docmodel = new DoctorsModel();
	try {
		docmodel.setDoctorId(docid);
		docmodel.setConfirmation(confirmation);
		docservice.docServiceApprove(docmodel);
		response.sendRedirect("./verifieddoctors.jsp");
	}
	catch(ServiceException e) {
		response.sendRedirect("./approvedoc1.jsp?errorMessage="+e.getMessage());
		
	}
	
	} 


}
