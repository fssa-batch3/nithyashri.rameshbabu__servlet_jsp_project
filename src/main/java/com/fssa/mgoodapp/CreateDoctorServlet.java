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
		String regyear = request.getParameter("regyear");
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
			docmodel.setDoctorAvailabilityEnd(availfrom);
			docmodel.setDoctorAvailabilityFrom(availend);
			docmodel.setDoctorImg(docimg);
			docmodel.setEmail(email);
			docmodel.setExperience(ExperienceYrInt);
			docmodel.setGender(gender);
			docmodel.setName(doctorname);
			docmodel.setPhone(mobnum);
			docmodel.setRegistrationCouncil(regcouncil);
			docmodel.setRegistrationNumber(regnum);
			docmodel.setSpecialization(specialization);
			docmodel.setRegistrationYear(regyear);
			
			docservice.createDoctor(docmodel);
			response.sendRedirect("./docapprove.jsp");
				
		}
		
		catch(ServiceException e){
			e.printStackTrace();
		}
	}
	
	
 
}
