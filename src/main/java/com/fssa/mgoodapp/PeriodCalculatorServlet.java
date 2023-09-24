//package com.fssa.mgoodapp;
//import java.io.IOException;
//
//import java.text.SimpleDateFormat;
//import java.util.Calendar;
//import java.util.Date;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@WebServlet("/CalculatePeriodServlet")
//public class PeriodCalculatorServlet extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        String lastPeriodDateStr = request.getParameter("last-period");
//        int cycleLength = Integer.parseInt(request.getParameter("cycle-length"));
//
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//        Date lastPeriodDate = sdf.parse(lastPeriodDateStr);
//
//        // Calculate the next period date based on the cycle length
//        Calendar calendar = Calendar.getInstance();
//        calendar.setTime(lastPeriodDate);
//        calendar.add(Calendar.DATE, cycleLength);
//        Date nextPeriodDate = calendar.getTime();
//
//        // Calculate the fertile window
//        Calendar fertileStart = Calendar.getInstance();
//        fertileStart.setTime(nextPeriodDate);
//        fertileStart.add(Calendar.DATE, -14);
//
//        Calendar fertileEnd = Calendar.getInstance();
//        fertileEnd.setTime(fertileStart.getTime());
//        fertileEnd.add(Calendar.DATE, 6);
//
//        // Calculate the ovulation date
//        Calendar ovulationDate = Calendar.getInstance();
//        ovulationDate.setTime(fertileStart.getTime());
//        ovulationDate.add(Calendar.DATE, 3);
//
//        // Create a JSON response
//        String jsonResponse = String.format("{\"nextPeriodDate\": \"%s\", \"fertileStartDate\": \"%s\", \"fertileEndDate\": \"%s\", \"ovulationDate\": \"%s\"}",
//                sdf.format(nextPeriodDate), sdf.format(fertileStart.getTime()), sdf.format(fertileEnd.getTime()), sdf.format(ovulationDate.getTime()));
//
//        response.setContentType("application/json");
//        response.setCharacterEncoding("UTF-8");
//        response.getWriter().write(jsonResponse);
//    }
//}
