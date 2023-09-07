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

	<%
	String errorMessage = request.getParameter("errorMessage");
	if (errorMessage != null) {
		out.println("<p class='error'>" + errorMessage + "</p>");
	}
	%>

	 <div class="contain">
        <div class="wrap">
            <div class="tit"><span>Sign-Up</span></div>
            <form id="form" method = "post" action = "register">
                <div class="rows">
                    <i class="fas fa-user"></i>
                    <input id="fname" type="text" placeholder="Username" name = "username"  
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
                    <input id="phone" type="tel" min = -1 name="phone" placeholder="phone" required>
                </div>
               
              <div class="rows button">
                    <button type="submit">sign-Up</button>
                </div>
            </form>
        </div>
    </div>
    
</body>
</html>
