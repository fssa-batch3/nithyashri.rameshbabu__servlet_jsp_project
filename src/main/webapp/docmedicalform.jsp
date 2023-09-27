<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./assets/css/docmedicalform.css">
<link rel="stylesheet" href="./assets/css/style.css">
</head>

<body>
	<jsp:include page="header.jsp"></jsp:include>
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
				   <option value="Medical Council of India (MCI)">Medical Council of India (MCI)</option>
    <option value="American Medical Association (AMA)">American Medical Association (AMA)</option>
    <option value="Medical Board of Australia">Medical Board of Australia</option>
    <option value="Irish Medical Council">Irish Medical Council</option>
    <option value="Medical Council of Canada (MCC)">Medical Council of Canada (MCC)</option>
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
document.addEventListener("DOMContentLoaded", function () {
    let doctorname = "<%=doctorname%>";
    let email = "<%=email%>";
    let specialization = "<%=specialization%>";
    let gender = "<%= gender %>";
    let bio = "<%= bio %>";
    let mobnum = "<%= mobnum %>";
    let password = "<%= password %>";
    
    console.log(doctorname);

    document.getElementById("name").value = doctorname;
    document.getElementById("mail").value = email;
    document.getElementById("special_in").value = specialization;
    document.getElementById("gender").value = gender;
    document.getElementById("bio").value = bio;
    document.getElementById("mobnum").value = mobnum;
    document.getElementById("password").value = password;

});

</script>

</body>

</html>