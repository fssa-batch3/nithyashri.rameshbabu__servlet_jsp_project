<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<h1>Welcome to Book Web App</h1>


	<%
	String loggedInEmail = (String) session.getAttribute("loggedInEmail");

	if (loggedInEmail == null) {
		response.sendRedirect("login.jsp");
	}
	%>
	
</body>

</html>