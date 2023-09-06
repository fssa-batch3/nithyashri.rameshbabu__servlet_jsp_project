<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel = "stylesheet" href = "./assets/css/register.css">
</head>


<body>

	<!-- <h2>Register</h2> -->
	<%
	String errorMessage = request.getParameter("errorMessage");
	if (errorMessage != null) {
		out.println("<p class='error'>" + errorMessage + "</p>");
	}
	%>
	<!-- <form action="register" method="post">
		<div>
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" required>
		</div>
		<div>
			<label for="email">Email:</label> <input type="email" id="email"
				name="email" required>
		</div>
		<div>
			<label for="password">Password:</label> <input type="password"
				id="password" name="password" required>
		</div>
		<div>
			<label for="Phone">Phone number:</label> <input type="number"
				id="phone" name="phone" required>
		</div>
		<button type="submit">Register</button>
	</form> -->
	
	 <div class="contain">
        <div class="wrap">
            <div class="tit"><span>Sign-Up</span></div>
            <form id="form" method = "post" action = "register">
                <div class="rows">
                    <i class="fas fa-user"></i>
                    <input id="fname" type="text" placeholder="Username" name = "username" pattern="[A-Za-z]{1,15}" 
                        required>
                </div>
                <div class="rows">
                    <i class="fa fa-envelope"></i>
                    <input id="email" type="email" name="email" placeholder="email"  required>
                </div>
                 <div class="rows">
                    <i class="fas fa-lock"></i>
                    <input type="password" id="pass" name="password" placeholder="password"    
                        required>
                </div>
                 <div class="rows">
                    <i class="fa fa-envelope"></i>
                    <input id="phone" type="tel" name="phone" placeholder="phone" required>
                </div>
               
              <div class="rows button">
                    <button type="submit">sign-Up</button>
                </div>
            </form>
        </div>
    </div>
    
</body>
</html>
