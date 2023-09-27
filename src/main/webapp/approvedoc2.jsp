<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./assets/css/approvedoc2.css">
</head>
<style>
@import url("https://fonts.googleapis.com/css2?family=Outfit:wght@100&family=Poppins:wght@100;300;400;500;700&display=swap");
:root {
  --aqua: rgb(17, 163, 163);
  --black: #444;
  --light-color: #777;
  --box-shadow: 0.5rem 0.5rem 0 rgb(17, 163, 163);
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
    <header class="header">
        <a href="#" class="logo"> <i class="fas fa-heartbeat"></i>MGOOD</a>

        <nav class="navbar">
            <a href="./adminpage.jsp">Home</a>
            <a href="./approvedoc1.jsp">Doctors</a>
            <a href="./verifieddoctors.jsp">Verified doctors</a>
        </nav>
        <div id="menu-btn" class="fas fa-bars"></div>
    </header>
	<div class="container">
		<div class="all">
			<img id="docimg" class="docimg">
			<div class="details">
				<div>
					<h2>Personal details</h2>
					<p id="name"></p>
					<p id="mail"></p>
					<p id ="ph"> </p>
					<p id="gender"></p>
				</div>
				<div>
					<h2>Specialty</h2>
					<p id = "special"></p>
					<p id = "expyr">Years</p>
				</div>
				<div>
					<h2>Medical registration</h2>
					<p id = "regno"></p>
					<p id = "regcouncil"></p>
					<p id = "regyear"></p>
				</div>
				<div>
					<h2>Education</h2>
					<p id = "degree"></p>
					<p id = "college"></p>
					<p id = "comyr"></p>
				</div>
				<div>
					<h2>Identity proof</h2>
					<p id = "aadharno"></p>
					<img id= "aadharImg" class="addimg">
				</div>
				<div>
					<h2>Hospital details</h2>
					<p id = "hosname"></p>
				  <img id= "hosImg" class="hosimg">
					<p id = "docavail"></p>
					<p id = "docfee"></p>
				</div>
			</div>

			<button class="approve-btn">Approve</button>
			<span>
				<button class="decline-btn">Decline</button>
			</span>
		</div>

	</div>

<script src="path-to-jquery/jquery.min.js"></script> -->

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

	<script>

        let doctor = JSON.parse(localStorage.getItem("doctor"))
        console.log(doctor)
        let url = window.location.search
        let getid = new URLSearchParams(url)
        let id = getid.get("doctorid")
        console.log(id)
        
  function getAllDoctors() {
          const url = "/mgoodapp/ViewDoctorServvlet";
          axios.get(url)
              .then(function(response) {
                  const docarray = response.data;
                  console.log(docarray);
                  let findobj = docarray.find(e => e["doctorId"] == id)
                  console.log(findobj)
                  displaydoctors(findobj);
              })
              .catch(function(error) {
                  console.log(error);
              });
      }
        
        
function displaydoctors(findobj){
	console.log(findobj)
	console.log(findobj.name)
	
	let docimg = document.getElementById("docimg");
    let aadharimg = document.getElementById("aadharImg");
    let hosimg = document.getElementById("hosImg");
	docimg.setAttribute("src", findobj.doctorImg);
	aadharimg.setAttribute("src",findobj.aadharImg);
	hosimg.setAttribute("src",findobj.clinicImg);
	
	document.getElementById("name").textContent = "Name: " + findobj.name;
	document.getElementById("mail").textContent = "Email: " + findobj.email;
	document.getElementById("ph").textContent = "Phone: " + findobj.phone;
	document.getElementById("gender").textContent = "Gender: " + findobj.gender;
	document.getElementById("special").textContent = "Specialization: " + findobj.specialization;
	document.getElementById("expyr").textContent = "Experience: " + findobj.experience  +  "years";
	document.getElementById("regno").textContent = "Registration no: " + findobj.registrationNumber;
	document.getElementById("regcouncil").textContent = "Registration council: " + findobj.registrationCouncil;
	document.getElementById("regyear").textContent = "Registration year: " + findobj.registrationYear;
	document.getElementById("degree").textContent = "Degree: " + findobj.degree;
	document.getElementById("college").textContent = "College: " + findobj.college;
	document.getElementById("comyr").textContent = "Completion year: " + findobj.completionYear;
	document.getElementById("aadharno").textContent = "Aadhar no: " + findobj.aadharNo;
	document.getElementById("hosname").textContent = "Clinic name: " + findobj.clinicalName;
	document.getElementById("docavail").textContent = "Doctor availability: " + findobj.doctorAvailabilityFrom + " to" +  findobj.doctorAvailabilityEnd;
	document.getElementById("docfee").textContent = "Doctor fees: " + findobj.consulationFee;

 
        let button = document.querySelector(".approve-btn")
        
button.addEventListener("click", (e) => {
    let approve = "approved";
    let docid = findobj.doctorId;
    console.log(approve);
    console.log(docid);

    alert("You have been approved doctor");

    window.location.href = "/mgoodapp/UpdateConfirmationDoctorServlet?doctor_id=" + docid + "&confirmation=" + approve;

});

        let nobutton = document.querySelector(".decline-btn")
        console.log(nobutton)
        nobutton.addEventListener("click", (e) => {
            let decline = "declined";
            let docid = findobj.doctorId;
            console.log(decline);
            console.log(docid);

            alert("You have been approved doctor");
            window.location.href = "/mgoodapp/UpdateConfirmationDoctorServlet?doctor_id=" + docid + "&confirmation=" + decline;

        })
}

 window.onload = function() {
            getAllDoctors();
        };


    </script>
</body>

</html>