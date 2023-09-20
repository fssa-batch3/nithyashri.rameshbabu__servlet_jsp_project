
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%

String admin =request.getContextPath() + "/adminlogin.jsp"; 
String contact = request.getContextPath() + "/docsign.jsp";
String patient = request.getContextPath()  + "/login.jsp";
String home = request.getContextPath()  + "/doctor0.jsp";
String doctors = request.getContextPath()  + "/doctor.jsp";
String healthtest = request.getContextPath()  + "/periodspage.jsp";
String blogs = request.getContextPath()  + "/services.jsp";
String history =request.getContextPath()  + "/patientapphistory.jsp";
String indexpage = request.getContextPath() + "index.jsp";
%>



	<header class="header">
						<a href="#" class="logo"> <i class="fas fa-heartbeat"></i>MGOOD
					</a>

				<c:if test="${empty sessionScope.loggedInEmail}">
				
					<nav class="navbar">
						<a href=admin>Admin</a> <a href=contact>Doctor</a> <a
							href=patient>User</a>
					</nav>
					<div id="menu-btn" class="fas fa-bars"></div>
				</c:if>
				<c:if test="${not empty sessionScope.loggedInEmail}">
				
					<nav class="navbar">
					
						<a href=home>Home</a> <a href="<%= doctors %>">Doctors</a> <a
							href=healthtest>Periods Calculator</a> <a href=blogs>Blogs</a>
						<a href="/pages/patientapphistory.html?userid=getuser">Booking
							history</a> <a href="index.jsp" onclick="logout_link()">logout</a><img
							onclick="profile()" id="random_img" alt ="img">
					</nav>
					<div id="menu-btn" class="fas fa-bars"></div>
				</c:if>

	</header>


