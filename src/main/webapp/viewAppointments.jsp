<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<style>
    table {
        border-collapse: collapse;
        width: 100%;
        font-family: poppins;
    }

    h2 {
        font-family: poppins;
        text-align: center;
    }

    th, td {
        text-align: left;
        padding: 8px;
    }

    th {
        background-color: #63b7ac;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    .mgooddoc {
        border-radius: 50%;
        width: 90px;
    }
</style>
<body>
    <h2>List user Appointment</h2>
    <table class="tabs">
        <thead class="head">
            <tr>
                <th>Doctor Name</th>
                <th>Hospital Name</th>
                <th>DocSlot Date & time</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="app" items="${APPOINTMENT_LIST}">
                <tr>
                    <td>${app.doctorName}</td>
                    <td>${app.hospitalName}</td>
                    <td>${app.time}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
