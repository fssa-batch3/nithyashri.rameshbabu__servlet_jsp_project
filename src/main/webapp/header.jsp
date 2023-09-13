<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
      
 <style>
        /* Reset some default styles */
        body, ul, li {
            margin: 0;
            padding: 0;
            list-style: none;
        }

        /* Basic styles for the header and nav */
        header {
            
            color: #fff;
            text-align: center;
            padding: 20px;
        }

       

        nav ul {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
        }

        /* Style for the list items (links) */
        nav ul li {
            margin: 0;
            padding: 0;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            padding: 10px;
            
        }

        nav ul li a:hover {
            background-color: #444;
        }
        
    </style>
      
</head>

<body>

  <header>
        <nav>
            <ul>
                <c:if test="${empty sessionScope.loggedInEmail}">
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.jsp">Sign up</a></li>
                </c:if>
                <c:if test="${not empty sessionScope.loggedInEmail}">
                    <li><a href="createAppointment.jsp">Book Appointment</a></li>
                    <li><a href="ProfileServlet">Profile page</a></li>
                    <li><a href="ViewAppointments">View Appointment</a></li>
                    <li><a href="LogoutServlet">Logout</a></li>
                </c:if>
            </ul>
        </nav>
    </header>
    
  
    
    
</body>
</html>
