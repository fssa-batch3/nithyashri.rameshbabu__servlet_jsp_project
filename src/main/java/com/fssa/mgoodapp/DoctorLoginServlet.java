package com.fssa.mgoodapp;

import java.io.IOException;
import java.io.PrintWriter;

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

@WebServlet("/DoctorLoginServlet")
public class DoctorLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        DoctorService docService = new DoctorService();
        PrintWriter out = response.getWriter();

        try {
            // Attempt to log in the doctor
            DoctorsModel loggedInDoctor = docService.loginDoctor(email, password);

            if (loggedInDoctor != null) {
                // Check if the doctor is approved
                if (docService.isApproved(email)) {
                    HttpSession session = request.getSession();
                    session.setAttribute("loggedInDoctor", loggedInDoctor);
                    session.setAttribute("email", email);
                    response.sendRedirect("./successdoctor.jsp"); // Change to the correct page
                } 
                
            } else {
                
                response.sendRedirect("doclog.jsp?errorMessage=Invalid email or password.");
            }
        } catch (ServiceException e) {
            // Handle service exception
            response.sendRedirect("doclog.jsp?errorMessage=" + e.getMessage());
        }
    }
}
