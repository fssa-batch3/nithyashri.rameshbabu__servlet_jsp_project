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

import com.fssa.mgood.model.DoctorsModel;
import com.fssa.mgood.service.DoctorService;
import com.fssa.mgood.service.exception.ServiceException;


@WebServlet("/DoctorProfileServlet")
public class DoctorProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        DoctorService doctorService = new DoctorService();
	        PrintWriter out = response.getWriter();
	        HttpSession session = request.getSession();
	        String loggedInEmail = (String) session.getAttribute("email");
	        
	        if (loggedInEmail == null) {
	            response.sendRedirect("login.jsp?errorMessage=Kindly Login to Continue");
	        } else {
	            try {
	                DoctorsModel doctor = doctorService.findDoctorByEmailService(loggedInEmail);
	                
	                // Create a JSON object manually
	                JSONObject doctorJson = new JSONObject();
	                doctorJson.put("name", doctor.getName());
	                doctorJson.put("email", doctor.getEmail());
	                doctorJson.put("phone", doctor.getPhone());
	                doctorJson.put("password", doctor.getPassword());
	                doctorJson.put("profilePic", doctor.getDoctorImg());
	                doctorJson.put("address", doctor.getClinicalAddress());
	                doctorJson.put("doctorId", doctor.getDoctorId());
	
	                response.setContentType("application/json");
	                response.setCharacterEncoding("UTF-8");
	                
	                out.print(doctorJson.toString());
	                out.flush();
	                out.close();
	            } catch (ServiceException e) {
	                response.sendRedirect("doctorprofilepage.jsp?errorMessage=Doctor profile view failed: " + e.getMessage());
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
	            DoctorService doctorService = new DoctorService();
	            DoctorsModel doctor = new DoctorsModel();
	            doctor.setName(name);
	            doctor.setEmail(email);
	            doctor.setPassword(password);
	            doctor.setPhone(phone);
	            doctor.setClinicalAddress(address);
	            doctor.setDoctorImg(image);
	            
	            doctorService.updateDoctor(doctor);

	            response.sendRedirect("./doctorprofilepage.jsp");
	        } catch (ServiceException e) {
	            response.sendRedirect("/doctorprofilepage.jsp?errorMessage=Update Failed: " + e.getMessage());
	        }
	    }
	}

	





