<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="./assets/css/userprofile.css">
</head>
<style>
div.backBtn {
  width: 100px;
  left: 100px;
  top: 100px;
  background-color: #f4f4f4;
  transition: all 0.4s ease;
  position: fixed;
  cursor: pointer;
}

span.line {
  bottom: auto;
  right: auto;
  top: auto;
  left: auto;
  background-color: #333;
  border-radius: 10px;
  width: 100%;
  left: 0px;
  height: 2px;
  display: block;
  position: absolute;
  transition: width 0.2s ease 0.1s, left 0.2s ease, transform 0.2s ease 0.3s, background-color 0.2s ease;
}

span.tLine {
  top: 0px;
}

span.mLine {
  top: 13px;
  opacity: 0;
}

span.bLine {
  top: 26px;
}

.label {
  position: absolute;
  left: 0px;
  top: 5px;
  width: 100%;
  text-align: center;
  transition: all 0.4s ease;
  font-size: 1em;
}

div.backBtn:hover span.label {
  left: 25px
}

div.backBtn:hover span.line {
  left: -10px;
  height: 5px;
  background-color: #F76060;
}

div.backBtn:hover span.tLine {
  width: 25px;
  transform: rotate(-45deg);
  left: -15px;
  top: 6px;
}

div.backBtn:hover span.mLine {
  opacity: 1;
  width: 30px;
}

div.backBtn:hover span.bLine {
  width: 25px;
  transform: rotate(45deg);
  left: -15px;
  top: 20px;
  }

</style>
<body>
	<jsp:include page="header.jsp"></jsp:include>

   
 
	<div class="wholeprofilecontainer" id="form">
		<div class="userdetails">

			<h1 class="profileh1">Edit profile</h1>
			<form action="ProfileServlet" method="post">
				<img alt="" id="profile" > <label
					for="name">Name</label><br /> <input type="text" id="name"
					name="name" placeholder=" enter your name" 
					required /><br /> <label for="emailid">Email ID</label><br /> <input
					type="email" class="emailid" name="mail" id="email"
					placeholder=" enter your Email ID"  required /><br />

				<label for="postalcode">Password</label><br /> <input
					type="password" class="postalcode" id="password" name="pass"
					 required /><br /> <label
					for="postalcode">Address</label><br /> <input class="postalcode"
					name="add" id="address"  /><br /> <label
					for="postalcode">Mobile number</label><br /> <input
					class="postalcode" id="phone_no" type="tel" 
					pattern="^(?:\+1)?[ -]?\(?([0-9]{3})\)?[ -]?([0-9]{3})[ -]?([0-9]{4})$"
					name="mob" title="Must contain 10 numbers" required /><br /> <label
					for="postalcode">Upload image</label><br /> <input
					class="postalcode" id="image_url" name="img"
					 /><br />
				<button class="submit" onclick="save()" type="submit">Save</button>
			</form>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	 <script src="script.js"></script>
	<script>
		function submit() {
			document.getElementById("form").style.display = 'block';
		}
		function save() {
			document.getElementById("form").style.display = 'none';
		}
		 window.onload = function () {
		        const url = "./ProfileServlet";
		        axios.get(url)
		            .then(function (response) {
		                const data = response.data; // Parse the JSON string into an object
		                console.log(data);
		                
		                // Now you can access the properties of the UserModel as an object
		                document.getElementById("name").value = data.name;
		                document.getElementById("email").value = data.email;
		                document.getElementById("password").value = data.password;
		                document.getElementById("address").value = data.address;
		                document.getElementById("phone_no").value = data.phone;
		                document.getElementById("image_url").value = data.profilePic;
		                document.getElementById("profile").src = data.profilePic;

		            })
		            .catch(function (error) {
		                console.error('Request failed', error);
		            });

		 }



	</script>
 
</body>
</html>