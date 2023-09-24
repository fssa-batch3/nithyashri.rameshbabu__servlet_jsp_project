package com.fssa.mgoodapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.mgood.model.AppointmentsModel;
import com.fssa.mgood.service.AppointmentService;
import com.fssa.mgood.service.exception.ServiceException;

/**
 * Servlet implementation class GetAllViewAppJsonServlet
 */
@WebServlet("/GetAllViewAppJsonServlet")
public class GetAllViewAppJsonServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AppointmentService appointmentService = new AppointmentService();

        try {
            List<AppointmentsModel> app = appointmentService.viewAppointmentService();
            JSONArray apps = new JSONArray(app);
            response.setContentType("application/json");
            PrintWriter out = response.getWriter();
            out.print(apps.toString());
            out.close();
        } catch (ServiceException e) {
            e.printStackTrace();
        }
    }
}


