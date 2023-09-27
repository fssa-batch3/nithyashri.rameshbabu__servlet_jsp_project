
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%
String admin = request.getContextPath() + "/index.jsp";
String contact = request.getContextPath() + "/docsign.jsp";
String patient = request.getContextPath() + "/login.jsp";
String home = request.getContextPath() + "/successdoctor.jsp";
String history = request.getContextPath() + "/appshow.jsp";
String indexpage = request.getContextPath() + "index.jsp";
%>



<header class="header">
	<a href="#" class="logo"> <i class="fas fa-heartbeat"></i>MGOOD
	</a>

	<c:if test="${empty sessionScope.email}">

		<nav class="navbar">
			<a href="<%=admin%>">Home</a> <a href="<%=contact%>">Doctor</a> <a
				href=<%=patient%>>User</a>
		</nav>
		<div id="menu-btn" class="fas fa-bars"></div>
	</c:if>
	<c:if test="${not empty sessionScope.email}">

		<nav class="navbar">

	<a href="./appshow.jsp?doctor_email=<%= (String) session.getAttribute("email") %>">Appointments</a> <a href="DoctorLogoutServlet" onclick="logout_links()">logout</a><img
				src="${data.profilePic}" onclick="docprofile()" id="random_img"
				alt="img">
		</nav>
		<div id="menu-btn" class="fas fa-bars"></div>
	</c:if>

</header>


