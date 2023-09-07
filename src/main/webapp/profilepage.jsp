<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../assets/css/profile.css">
</head>
<style>
/* ----profile------ */
.profile-card {
    margin: 2% auto;
    text-align: center;
    padding: 20px;
    width: 350px;
    border-radius: 50%;
    background-color: #f5f5f5;
    box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
}

.input-field {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 16px;
}

.caption {
    text-align: center;
    margin-top: 10px;
}

.caption i {
    padding-right: 5px;
    color: #777;
}

.caption h4 {
    margin-top: 0;
    font-size: 18px;
    color: #555;
    border-bottom: 2px solid #ddd;
    padding-bottom: 5px;
}



.input-field {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 16px;
}
</style>
<body>
	
<div class="profile-card">
		<c:if test="${not empty user}">
		<p class = "caption">Name: ${user.name}</p>
		<p class = "caption">Email: ${user.email}</p>
		<p class = "caption">Password: ${user.password}</p>
		<p class = "caption">Phone: ${user.phone}</p>
	</c:if>
	<!-- Display an error message if there was a ServiceException -->
	<c:if test="${not empty errorMessage}">
		<p>Error: ${errorMessage}</p>
	</c:if>
		
	</div>
</body>
</html>