<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./assets/css/userprofile.css">
</head>
<!-- <style>
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
</style> -->
<body>
	
<div class="profile-card">
		<c:if test="${not empty user}">
		<p class = "caption">Name: ${user.name}</p>
		<p class = "caption">Email: ${user.email}</p>
		<p class = "caption">Password: ${user.password}</p>
		<p class = "caption">Phone: ${user.phone}</p>
	</c:if>
	<c:if test="${not empty errorMessage}">
		<p>Error: ${errorMessage}</p>
	</c:if>
		<button onclick = "submit()" id="btn">Edit</button>
	</div>
	 <div class="wholeprofilecontainer" id="form" style = "display:none">
        <div class="userdetails">

            <h1 class="profileh1">Edit profile</h1>
            <form action = "ProfileServlet" method = "post">
                <img alt="" id="profile" src = "${user.profilePic}" >

                <label for="name">Name</label><br />
                <input type="text" id="name" name = "name"placeholder=" enter your name" value="${user.name}" required /><br />
                <label for="emailid">Email ID</label><br />
                <input type="email" class="emailid" name = "mail"id="email" placeholder=" enter your Email ID" value = "${user.email}" required /><br />

                <label for="postalcode">Password</label><br />
                <input type="password" class="postalcode" id="password" name = "pass" value = "${user.password}" required /><br />
                <label for="postalcode">Address</label><br />
                <input class="postalcode" name = "add" id="address" value = "${user.address}"  /><br />
                <label for="postalcode">Mobile number</label><br />
                <input class="postalcode" id="phone_no" type="tel" value = "${user.phone}"
                    pattern="^(?:\+1)?[ -]?\(?([0-9]{3})\)?[ -]?([0-9]{3})[ -]?([0-9]{4})$"
                  name = "mob"  title="Must contain 10 numbers" required /><br />
                <label for="postalcode">Upload image</label><br />
                <input class="postalcode" id="image_url" name = "img"  value = "${user.profilePic}" /><br />
                <button class="submit" onclick = "save()" type="submit">Save</button>
                <button class="submit" type="submit" id="delete">Delete</button>
            </form>
        </div>
    </div>
	<script>
	
	function submit(){
	document.getElementById("form").style.display = 'block';
	}
	function save(){
		document.getElementById("form").style.display = 'none';
		
	}
	</script>
</body>
</html>