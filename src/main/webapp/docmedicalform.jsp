<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./assets/css/docmedicalform.css">
</head>

<body>

	<form id="docmedical" method = "POST" action = "<%= request.getContextPath() %>/doceducation.jsp">
		<h1>Medical Registration</h1>
		    <input type="hidden" name="doctorname" id="name"  required>
		    <input type="hidden" name="email" id="mail" required>
		     <input type="hidden" name="specialization" id="special_in">
		     <input type ="hidden" name = "gender" id = "gender" required>
		     <input type="hidden" name="mobnum" id="mobnum" required>
		     <input type="hidden" name="bio" id="bio" required>
		     <input type="hidden" name="password" id="password" required>
		     
		<label for="username">Registration Number</label> 
		<input type="text" name = "regnum"
			id="num" pattern="[A-Za-z]{2}\d{6}"
			title="Please enter a valid registration number. Example: AB123456"
			required> 
			
		<label for="username">Registration Council</label>	
		<select id="council" name = "regcouncil" required>
			<option value="" disabled selected>Select your registration
				council</option>
			<option value="General Medical Council (GMC)">General
				Medical Council (GMC)</option>
			<option value="Nursing and Midwifery Council (NMC)">Nursing
				and Midwifery Council (NMC)</option>
			<option value="General Dental Council (GDC)">General Dental
				Council (GDC)</option>
			<option value="Health and Care Professions Council (HCPC)">Health
				and Care Professions Council (HCPC)</option>
		</select> 
		
		<label for="username">Registration year</label> 
		<select id="year" name = "regyear" required>
			<option value="" disabled selected>Registration year</option>
		</select>

		<button id="submit" type="submit">Continue</button>
	</form>


<%
String doctorname = request.getParameter("doctorname");
String email = request.getParameter("email");
String specialization = request.getParameter("specialization");
String gender = request.getParameter("gender");
String bio = request.getParameter("bio");
String mobnum = request.getParameter("mobnum");
String password = request.getParameter("password");
%>

<script>
    let doctorname =  "<%=doctorname%>";
    let email = "<%=email%>";
    let specialization = "<%=specialization%>";
    let gender = "<%= gender %>";
    let bio = "<%= bio %>";
    let mobnum = "<%= mobnum %>";
    let password = "<%= password %>";

    document.getElementById("name").value = doctorname;
    document.getElementById("mail").value = email;
    document.getElementById("special_in").value = specialization;
    document.getElementById("gender").value = gender;
    document.getElementById("bio").value = bio;
    document.getElementById("mobnum").value = mobnum;
    document.getElementById("password").value = password;
    
	let currentYear = new Date().getFullYear();
	let yeardropdown = document.getElementById("year");
	for (let i = currentYear; i >= 1923; i--) {
		let option = document.createElement("option");
		option.value = i;
		option.text = i;
		yeardropdown.appendChild(option);
	}

	/*  let form = document.getElementById("docmedical")
	 form.addEventListener("submit", function (event) {
	     event.preventDefault();

	     let num = document.getElementById("num").value;
	     let council = document.getElementById("council").value;
	     let year = document.getElementById("year").value;
	     let docdatas = {
	         registrationno: num,
	         registrationcouncil: council,
	         registrationyr: year

	     }
	     const url = window.location.search;
	     const url_params = new URLSearchParams(url)
	     const get_id = url_params.get("doctorid")
	     console.log(get_id)
	     let docdetails = JSON.parse(localStorage.getItem("doctor"))
	     console.log(docdetails)
	     let finddoc = docdetails.find(function (event) {
	         let find = event["doctor_id"]
	         if (find == get_id) {
	             return true;
	         }
	     })
	     // console.log(finddoc)
	     let check_obj = Object.assign(finddoc, docdatas)
	     console.log(check_obj)

	     let index = docdetails.indexOf(finddoc)
	     console.log(index);

	     docdetails[index] = check_obj

	     localStorage.setItem("doctor", JSON.stringify(docdetails))

	     alert("Step 2 finished")
	     window.location.href = "./doceducation.html?doctorid=" + finddoc["doctor_id"]



	 })
	 */
</script>

</body>

</html>