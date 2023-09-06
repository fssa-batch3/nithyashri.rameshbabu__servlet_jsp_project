<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link rel = "stylesheet" href = "./assets/css/register.css">
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<!--     <h1>Login Page</h1> -->
    <%
	String errorMessage = request.getParameter("errorMessage");
	if (errorMessage != null) {
		out.println("<p class='error'>" + errorMessage + "</p>");
	}
	%>
    <!-- <form action="LoginServlet" method="post">
        <label>Email: </label>
        <input type="email" name="email" placeholder="Enter email">
        <br />
        <label>Password: </label>
        <input type="password" name="password" placeholder="Enter password">
        <br />
        <button type="submit">Submit</button>
    </form> -->
    
    <div class="contain">
        <div class="wrap">
            <div class="tit"><span>Login Here</span></div>
            <form id="form2" action = "LoginServlet" method="post">
                <div class="rows">
                    <i class="fas fa-user"></i>
                    <input type="text" id="email" name="email" placeholder="Email or Phone" required>
                </div>
                <div class="rows">
                    <i class="fas fa-lock"></i>
                    <input type="password" id="password" name="password" placeholder="Password" id="psw"
                        required>
                </div>
                <div class="rows button">
                    <button type="submit">Login</button>
                </div>
                <div class="signup">Not a member? <a href="./signup.html">Signup now</a></div>
            </form>
        </div>
    </div>
</body>
</html>
