<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/css/doceducation.css">
</head>
<style>
.error-msg{
font-size:14px;
color:red;

}

</style>
<body>
<jsp:include page="header.jsp"></jsp:include>
    <form id="docedu" method = "POST" action = "<%= request.getContextPath() %>/dochos.jsp">
        <h1>Educational_Qualification</h1>
         <input type="hidden" name="doctorname" id="name"  required>
		    <input type="hidden" name="email" id="mail" required>
		     <input type="hidden" name="specialization" id="special_in">
		     <input type ="hidden" name = "gender" id = "gender" required>
		     <input type="hidden" name="mobnum" id="mobnum" required>
		     <input type="hidden" name="bio" id="bio" required>
		     <input type="hidden" name="password" id="password" required>
		     <input type="hidden" name = "regnum" id="num" required>
		     <input type ="hidden" id="council" name = "regcouncil" required>
			 <input type = "hidden" id="year" name = "regyear" required>
		     
        <label for="username">Degree</label>
        <select id="degree" name = "degree" required>
            <option value="" disabled selected>Select your degree</option>
            <option value="MBBS">MBBS</option>
            <option value="BDS">BDS</option>
            <option value="BAMS">BAMS</option>
            <option value="BUMS">BUMS
            </option>
            <option value="BHMS">BHMS
            </option>
        </select>
        <label for="username">College/Institution</label>
        <select id="college" name = "college"required>
            <option value="" disabled selected>Select your college</option>
            <option value="Madras medical college">Madras medical college</option>
            <option value="Government medical college">Government medical college</option>
            <option value="Bangalore medical college">Bangalore medical college</option>
            <option value="Kolkata medical college">Kolkata medical college
            </option>
        </select>
        <label for="username">year of completion</label>
        <select id="exyear" name = "comyr" required >
            <option value="" disabled selected>Type year of completion</option>
        </select>
        <label for="username">Year of experience</label>
        <input type="text" id="exnum" name = "exyr" min="0" max="39" maxlength="2" required><span id="exyr-error" class="error-msg"></span>
<br>
<br>

        <h1>Identity_Proof</h1>
        <label for="name">Aadhar_no</label><br />
        <input type="text" name = "aadharno" id="aadhar_no"placeholder="xxxx xxxx xxxx" required
            title="Please enter a valid Aadhaar number in the format xxxx xxxx xxxx" required /><br />
        <label for="postalcode">Aadhar image</label><br />
        <input class="postalcode" id="aadhar_image" name = "aadharimg" required /><br />

        <label for="postalcode">Doctor image</label><br />
        <input type="url" class="postalcode" name = "docimg" id="image_url" required /><br />

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
String regnum = request.getParameter("regnum");
String regcouncil = request.getParameter("regcouncil");


%>

    <script>
    let doctorname =  "<%=doctorname%>";
    let email = "<%=email%>";
    let specialization = "<%=specialization%>";
    let gender = "<%= gender %>";
    let bio = "<%= bio %>";
    let mobnum = "<%= mobnum %>";
    let password = "<%= password %>";
    let regnum = "<%= regnum %>";
    let regcouncil = "<%= regcouncil %>";


    document.getElementById("name").value = doctorname;
    document.getElementById("mail").value = email;
    document.getElementById("special_in").value = specialization;
    document.getElementById("gender").value = gender;
    document.getElementById("bio").value = bio;
    document.getElementById("mobnum").value = mobnum;
    document.getElementById("password").value = password;
    document.getElementById("num").value = regnum;
    document.getElementById("council").value = regcouncil;
    
    
    
        let currentYear = new Date().getFullYear();
        let yeardropdown = document.getElementById("exyear");
        for (let i = currentYear; i >= 1970; i--) {
            let option = document.createElement("option");
            option.value = i;
            option.text = i;
            yeardropdown.appendChild(option);
        }
        
        const exYearInput = document.getElementById("exyear");
        const exNumInput = document.getElementById("exnum");
        const exYearError = document.getElementById("exyr-error");

        exNumInput.addEventListener("input", function () {
            const exYear = exYearInput.value;
            const exNum = exNumInput.value;
            if (exYear && exNum) {
                const completionYear = parseInt(exYear);
                const experienceYear = parseInt(exNum);
                const currentYear = new Date().getFullYear();

                if (experienceYear < 0 || experienceYear > (currentYear - completionYear)) {
                    exYearError.textContent = "Invalid experience year";
                    exNumInput.setCustomValidity("Invalid experience year");
                } else {
                    exYearError.textContent = "";
                    exNumInput.setCustomValidity("");
                }
            }
        });

        exYearInput.addEventListener("change", function () {
            exNumInput.dispatchEvent(new Event("input"));
        });

      
    </script>
</body>

</html>