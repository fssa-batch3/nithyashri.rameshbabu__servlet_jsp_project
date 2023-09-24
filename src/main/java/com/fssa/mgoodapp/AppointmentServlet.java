package com.fssa.mgoodapp;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.mgood.model.AppointmentsModel;
import com.fssa.mgood.model.DoctorsModel;
import com.fssa.mgood.model.UserModel;
import com.fssa.mgood.service.AppointmentService;
import com.fssa.mgood.service.exception.ServiceException;

@WebServlet("/AppointmentServlet")
public class AppointmentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AppointmentService appService = new AppointmentService();

        String date = request.getParameter("date");
        String id = request.getParameter("doc_id");
        int doctorId = Integer.parseInt(id);

        try {
            List<String> appointmentTimes = appService.viewAppointmentTimesService(date, doctorId);

            // Create a JSON array to hold the appointment times
            JSONArray jsonArray = new JSONArray();

            // Add each appointment time as an individual object in the array
            for (String appointmentTime : appointmentTimes) {
                jsonArray.put(appointmentTime);
            }

            // Set the response content type to JSON
            response.setContentType("application/json");

            // Send the JSON array as the response
            response.getWriter().write(jsonArray.toString());

        } catch (ServiceException e) {
            e.printStackTrace();
        }
    }
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AppointmentsModel app = new AppointmentsModel();
		AppointmentService appservice = new AppointmentService();
	    UserModel user = new UserModel();
		String time = request.getParameter("time");
		String date = request.getParameter("date");
        String docid = request.getParameter("docid");
        String userid = request.getParameter("userid");
        
        int user1id = Integer.parseInt(userid);
        int doc1id = Integer.parseInt(docid);
        
        DoctorsModel doc = new DoctorsModel();
		try {
			user.setUserId(user1id);
			app.setUser(user);
			
			doc.setDoctorId(doc1id);
			app.setDoctor(doc);
			
			app.setSlotdate(date);
			app.setTime(time);
			appservice.createAppointment(app);
			response.sendRedirect("./patientapphistory.jsp?user_id="+user1id);
 
		}

		catch (ServiceException e) {
			
			request.setAttribute("time", time);
			request.setAttribute("errorMessage", "Create Appointment failed: " + e.getMessage());
			request.getRequestDispatcher("./bookapp.jsp").forward(request, response);
		
		}
	}
}
