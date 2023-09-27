<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/css/docsign.css">
</head>
<style>
.error {
  color: red;
  width: 40%;
  padding: 10px;
  margin: auto;
  text-align: center; 
  position: absolute;
  top: 75%;
  font-size:17px;
  left: 50%;
  transform: translate(-50%, -50%); 
}
.form{
margin-top: 250px;
}
#submit{
  background-color: rgb(39, 88, 81);
  color: white;
  padding: 10px 20px;
  width: 50%;
  display: flex;
  justify-content: center;
  margin: auto;
  border: none;
  border-radius: 5px;
  font-size: 16px;
  font-family: Arial, sans-serif;
  cursor: pointer;
  margin-top: 10px;
}
</style>
<body>

   <%
	String errorMessage = request.getParameter("errorMessage");
	if (errorMessage != null) {
		out.println("<p class='error'>" + errorMessage + "</p>");
	}
	%>
	<jsp:include page="docheader.jsp"></jsp:include>
    <form id="form" class="form" action="DoctorLoginServlet" method="POST">
        <h1>Login</h1>

        <label for="username">email</label>
        <input type="text" id="mail" name ="email" placeholder="Email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" required>

        <label for="username">Password</label>
        <input type="password" id="passwd" placeholder=" password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" name = "password"
            title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
            required>
        <button id="submit" type="submit">Continue</button>
    </form>


</body>

</html>