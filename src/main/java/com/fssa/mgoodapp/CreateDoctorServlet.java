package com.fssa.mgoodapp;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.mgood.model.DoctorsModel;
import com.fssa.mgood.service.DoctorService;
import com.fssa.mgood.service.exception.ServiceException;

/**
 * Servlet implementation class CreateDoctorServlet
 */
@WebServlet("/CreateDoctorServlet")
public class CreateDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String doctorname = request.getParameter("doctorname");
		String email = request.getParameter("email");
		String specialization = request.getParameter("specialization");
		String gender = request.getParameter("gender");
		String bio = request.getParameter("bio");
		String mobnum = request.getParameter("mobnum");
		String password = request.getParameter("password");
		String regnum = request.getParameter("regnum");
		String regcouncil = request.getParameter("regcouncil");
		String degree = request.getParameter("degree");
		String college = request.getParameter("college");
		String comyr = request.getParameter("comyr");
		String exyr = request.getParameter("exyr");
		String aadharno = request.getParameter("aadharno");
		String aadharimg = request.getParameter("aadharimg");
		String docimg = request.getParameter("docimg");
		String hosname = request.getParameter("hosname");
		String hosadd = request.getParameter("hosadd");
		String availfrom = request.getParameter("availfrom");
		String availend = request.getParameter("availend");
		String hosimg = request.getParameter("hosimg");
		String consulfee = request.getParameter("consulfee");

		int  consultFeeInt =  Integer.parseInt(consulfee);
		int ExperienceYrInt = Integer.parseInt(exyr);
		long aadharNoLong = Long.parseLong(aadharno);
		
		DoctorService docservice  = new DoctorService();
		DoctorsModel docmodel = new DoctorsModel();
		
		try{
			docmodel.setAadharImg(aadharimg);
			docmodel.setAadharNo(aadharNoLong);
			docmodel.setBio(bio);
			docmodel.setClinicalAddress(hosadd);
			docmodel.setClinicalName(hosname);
			docmodel.setClinicImg(hosimg);
			docmodel.setCollege(college);
			docmodel.setCompletionYear(comyr);
			docmodel.setConsulationFee(consultFeeInt);
			docmodel.setDegree(degree);
			docmodel.setPassword(password);
			docmodel.setDoctorAvailabilityEnd(availend);
			docmodel.setDoctorAvailabilityFrom(availfrom);
			docmodel.setDoctorImg(docimg);
			docmodel.setEmail(email);
			docmodel.setExperience(ExperienceYrInt);
			docmodel.setGender(gender);
			docmodel.setName(doctorname);
			docmodel.setPhone(mobnum);
			docmodel.setRegistrationCouncil(regcouncil);
			docmodel.setRegistrationNumber(regnum);
			docmodel.setSpecialization(specialization);
		
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
		     
			docservice.createDoctor(docmodel);
			request.setAttribute("email", email);
			request.setAttribute("doctorname", doctorname);
			RequestDispatcher dispatcher = request.getRequestDispatcher("./docapprove.jsp");
			dispatcher.forward(request, response);
				
		}
		
		catch(ServiceException e){
			response.sendRedirect("docsign.jsp?errorMessage= " + e.getMessage());
		}
	}
	
	
 
}
