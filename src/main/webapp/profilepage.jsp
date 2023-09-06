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
/* Form container style */
form {
    max-width: 400px;
    margin: 0 auto;
    padding: 35px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: rgb(17, 160, 160);
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

/* Form element styles */
form div {
    margin-bottom: 15px;
}

label {
    display: block;
    margin-bottom: 5px;
     color: white;
     font-family: "Poppins", sans-serif;
    
}

input[type="text"],
input[type="email"],
input[type="password"],
input[type="number"] {
    width: 93%;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
 

}

button[type="submit"] {
    background-color: #e74c3c;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button[type="submit"]:hover {
    background-color: #c0392b;
}
h2{
text-align:center;
color:white;
font-family: "Poppins", sans-serif;
}
</style>
<body>
	<c:if test="${not empty user}">
		<p>Name: ${user.name}</p>
		<p>Email: ${user.email}</p>
		<p>Password: ${user.password}</p>
		<p>Phone: ${user.phone}</p>
	</c:if>
	<!-- Display an error message if there was a ServiceException -->
	<c:if test="${not empty errorMessage}">
		<p>Error: ${errorMessage}</p>
	</c:if>

</body>
</html>