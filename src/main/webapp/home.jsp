<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>

    <!-- font awesome link -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

header {
	background-color: rgb(0, 99, 99);
	color: #fff;
	text-align: center;
	padding: 20px;
}

h1 {
	font-size: 36px;
}

.container {
	max-width: 960px;
	margin: 20px auto;
	padding: 20px;
	background-color: #fff;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

p {
	font-size: 18px;
}

.pic .logo {
	font-size: 2.0rem;
	color: grey;;
	text-decoration:none;
	font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS",
		sans-serif;
		
}
.pic .logo i {
  color: rgb(0, 99, 99);
}

</style>
</head>
<style>

</style>
<body>
    <jsp:include page="header.jsp"></jsp:include>
	<header>
		<h1>Welcome to Mgood</h1>
	</header>

	<div class="container">
		<section class="home" id="home">
			<div class="pic">
				<a href="#" class="logo"><i class="fas fa-heartbeat"></i>MGOOD
				</a>
			</div>
			<div class="content">
				<h3>We take care of your healthy life</h3>
				<p>Book an appointment for an in-clinic consultation</p>
				<p>Consult top doctors online for any health concern</p>
			</div>
		</section>
	</div>
</body>
</html>

