<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Error Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.card {
	background-color: white;
	border-radius: 10px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	padding: 20px;
	text-align: center;
}

h1 {
	color: #333;
	font-size: 40px;
}

p {
	color: #777;\
	margin-top:-10px;
}

a {
	color: #007bff;
	text-decoration: none;
}

a:hover {
	text-decoration: underline;
}
 .error {
            max-width: 20%;
            height: auto;
            margin-bottom: 20px;
        }
</style>
</head>
<body>
	
	<div class="card">
        <img src = "./assets/images/404-eror.png" class= "error" >
        <p>Page doesn't exist</p>
        <p>
            Please go to <a href="home.jsp">home</a> page
        </p>
    </div>
</body>
</html>