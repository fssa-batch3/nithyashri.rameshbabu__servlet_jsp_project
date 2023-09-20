<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./assets/css/approvedoc2.css">
</head>

<body>
	<div class="container">
		<div class="all">
			<h1>Doctor details</h1>
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
					<label>Aadhar image:</label><img id= "aadharImg" class="addimg">
				</div>
				<div>
					<h2>Hospital details</h2>
					<p id = "hosname"></p>
				   <label>Hospital image:</label><img id= "hosImg" class="hosimg">
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
 /* document.getElementById("aadharImg").textContent = "Aadhar img: " + findobj.aadharImg; */
	document.getElementById("hosname").textContent = "Clinic name: " + findobj.clinicalName;
/* 	document.getElementById("hosImg").textContent = "Clinic img: " + findobj.clinicImg; */
	document.getElementById("docavail").textContent = "Doctor availability: " + findobj.doctorAvailabilityFrom + " to" +  findobj.doctorAvailabilityEnd;
	document.getElementById("docfee").textContent = "Doctor fees: " + findobj.consulationFee;

  /* let box = document.createElement("div")

        box.setAttribute("class", "all")
        box.innerHTML = `<h1>Doctor details</h1>
            <img class="docimg"
                src=${findobj["doctorImg"]}>
            <div class="details">
                <div>
                    <h2>Personal details</h2>
                    <p>Name: ${findobj["name"]}</p>
                    <p>Email: ${findobj["mail"]}</p>
                    <p>Phone: ${findobj["mob"]}</p>
                    <p>Gender:${findobj["gender"]}</p>
                </div>
                <div>
                    <h2>Specialty</h2>
                    <p>Special_in: ${findobj["special"]}</p>
                    <p>Experience :${findobj["Experience"]}</p>
                </div>
                <div>
                    <h2>Medical registration</h2>
                    <p>Registration Number: ${findobj["registrationno"]}</p>
                    <p>Registration Council: ${findobj["registrationcouncil"]}</p>
                    <p>Registration year: ${findobj["registrationyr"]} </p>
                </div>
                <div>
                    <h2>Education</h2>
                    <p>Degree:   ${findobj["degree"]} </p>
                    <p>College:  ${findobj["college"]}</p>
                    <p>Completion year: ${findobj["yearofcomplete"]}</p>
                </div>
                <div>
                    <h2>Identity proof</h2>
                    <p>Aadhar_no :  ${findobj["aadharproof"]} </p>
                    <img class="addimg"
                src=${findobj["aadhar_img"]}>
                </div>
                <div>
                    <h2>Hospital details</h2>
                    <p>Hospital name :  ${findobj["hosname"]} </p>
                    <img class="hosimg"
                src=${findobj["hosimg"]}>
                    <p>Doctor's availability :  ${findobj["docslot"]} - ${findobj["doctorendtime"]} </p>
                    <p>Doctor fee : ${findobj["docfee"]}</p>
                </div>
            </div>

            <button  class="approve-btn">Approve</button> <span> <button class="decline-btn">Decline</button></span>`

        document.querySelector(".container").append(box) */
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