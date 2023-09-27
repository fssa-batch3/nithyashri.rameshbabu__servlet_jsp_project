<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/css/docprofile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<style>
@import url("https://fonts.googleapis.com/css2?family=Outfit:wght@100&family=Poppins:wght@100;300;400;500;700&display=swap");
:root {
  --aqua: #60a995;
  --black: #444;
  --light-color: #777;
  --box-shadow: 0.5rem 0.5rem 0 #60a995;
  --text-shadow: 0.4rem 0.4rem 0 rgba(0, 0, 0, 0.2);
  --border: 0.2rem solid var(--green);
}
* {
  font-family: "Poppins", sans-serif;
  margin: 0;
  padding: 0;
  text-decoration: none;
  text-transform: capitalize;
  outline: none;
  box-sizing: border-box;
  transition: all 0.2s ease-out;
}

html {
  font-size: 62.5%;
  overflow-x: hidden;
}
.header {
  padding: 2rem 9%;
  top: 0%;
  left: 0%;
  right: 0%;
  z-index: 1000;
  box-shadow: 0 0.5rem 1.5rem rgba(0, 0, 0, 0.1);
  display: flex;
  align-items: center;
  justify-content: space-between;
  background: #fff;
  position: fixed;
}
.header .logo {
  font-size: 2.6rem;
  color: var(--black);
  font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
}
.header .logo i {
  color: var(--aqua);
}
.header .navbar a {
  font-size: 1.7rem;
  color: var(--light-color);
  margin-left: 2rem;
}

.header .navbar a:hover {
  color: var(--aqua);
}
#menu-btn {
  font-size: 2.5rem;
  border-radius: 0.5rem;
  background: #eee;
  color: var(--blue);
  padding: 1rem 1.5rem;
  cursor: pointer;
  display: none;
}
</style>
<body>
 <jsp:include page="docheader.jsp"></jsp:include>
    <div class="wholeprofilecontainer">
        <div class="userdetails">

            <h1 class="profileh1">Edit profile</h1>
            <form id="form" action = "DoctorProfileServlet" method = "POST">
                <img alt="" id="profile">

                <label for="name">First Name</label><br />
                <input type="text" id="name" placeholder=" enter your name" required /><br />

                <label for="emailid">Email ID</label><br />
                <input type="email" class="emailid" id="mail" placeholder=" enter your Email ID" required /><br />

                <label for="postalcode">Mobile number</label><br />
                <input class="postalcode" id="mobnum" type="tel" placeholder="Enter your mobile number"
                    pattern="^(?:\+1)?[ -]?\(?([0-9]{3})\)?[ -]?([0-9]{3})[ -]?([0-9]{4})$"
                    title="Must contain 10 numbers" required /><br />

                <label for="postalcode">Doctor image</label><br />
                <input class="postalcode" id="image_url" placeholder="Upload your image" required /><br />

                <label for="postalcode">Hospital image</label><br />
                <input class="postalcode" id="hosimg" placeholder="Upload your hospital image" required /><br />

                <label for="postalcode">Hospital name</label><br />
                <input class="postalcode" id="hosname" placeholder="Enter you Hospital name" required /><br />

                <label for="postalcode">Availabilty time</label><br />
                <input class="postalcode" id="doctor-availability" placeholder="Enter you availability time"
                    required /><br />

                <label for="postalcode">Consultation fee</label><br />
                <input class="postalcode" id="docfee" placeholder="Enter you fees" required /><br />

	<button class="submit" onclick="save()" type="submit">Save</button>
            </form>
        </div>
    </div>
    <footer class="footer">
        <div class="container">
            <div class="rows">
                <div class="footer-col">
                    <h4>Home</h4>
                    <ul>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Ratings</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Services</h4>
                    <ul>
                        <li><a href="#">Doctors</a></li>
                        <li><a href="#">Specialist</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Blogs</h4>
                    <ul>
                        <li><a href="#">consult</a></li>
                        <li><a href="#">packages</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h4>Follow Us</h4>
                    <div class="share">
                        <a href="#" class="fab fa-youtube"></a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
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
		    const url = "./DoctorProfileServlet";
		    axios.get(url)
		        .then(function (response) {
		            const data = response.data; // Parse the JSON string into an object
		            console.log(data);

		            // Now you can access the properties of the DoctorsModel as an object
		            document.getElementById("name").value = data.name;
		            document.getElementById("mail").value = data.email;
		            document.getElementById("pass").value = data.password;
		            document.getElementById("mobnum").value = data.phone;
		            document.getElementById("add").value = data.address;
		            document.getElementById("img").value = data.profilePic;
		            document.getElementById("profile").src = data.profilePic;

		        })
		        .catch(function (error) {
		            console.error('Request failed', error);
		        });
		}




	</script>


</body>

</html>