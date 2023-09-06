<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body>
 <div class="contain">
        <div class="wrap">
            <div class="tit"><span>Login Here</span></div>
            <form id="form2" action="" method="post">
                <div class="rows">
                    <i class="fas fa-user"></i>
                    <input type="text" id="email" name="email" placeholder="Email or Phone" required>
                </div>
                <div class="rows">
                    <i class="fas fa-lock"></i>
                    <input type="password" id="password" placeholder="Password" name="password" id="psw">          
                </div>
                <div class="password"><a href="./signup.html">Forgot password?</a></div>
                <div class="rows button">
                    <button type="submit">Login</button>
                </div>
            </form>
        </div>

</body>
</html>