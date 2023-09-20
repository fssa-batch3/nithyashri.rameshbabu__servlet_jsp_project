<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/dochos.css">
</head>

<body>
    <form id="dochos"  method = "POST" action = "CreateDoctorServlet">
        <h1>Hospital_details</h1>
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
			 <input type="hidden" id="degree" name = "degree" required>
			 <input type="hidden"id="college" name = "college"required>
			 <input type="hidden" id="exyear" name = "comyr" required>
			 <input type="hidden" id="exnum" name = "exyr" maxlength="2" required>  
			 <input type="hidden" name = "aadharno" id="aadhar_no" pattern="[0-9]{4}\s[0-9]{4}\s[0-9]{4}" placeholder="xxxx xxxx xxxx" required>
			 <input type = "hidden" class="postalcode" id="aadhar_image" name = "aadharimg" required>           
			 <input type="hidden" class="postalcode" name = "docimg" id="image_url" required>
		     
        <label for="username">Hospital name</label>
        <input type="text" id="hosname" name = "hosname" pattern="^(?=.{0,50}$)[A-Za-z]+(?:\s[A-Za-z]+){0,3}$" required>
        <label for="username">Hospital Address</label>
        <input type="text" id="hosadd" name ="hosadd"
            pattern="^(?=.{0,200}$)[A-Za-z0-9!@#$%^&*()_+-={}[\]|\\;:'>,.?/]+[A-Za-z0-9]+(?:\s[A-Za-z0-9\s!@#$%^&*()_+-={}[\]|\\;:'>,.?/]+[A-Za-z0-9]+){0,10}$"
            required>
            <span id="displaytime"> <label for="username">Doctor's availability</label> <label for="username">Doctor's
                    availability</label></span>
            <span id="time"><select id="doctor-availability" name = "availfrom">
                    <option value="" disabled selected>Enter your starting time</option>
                    <option value="9:00 AM">9:00 AM</option>
                    <option value="10:00 AM">10:00 AM</option>
                    <option value="11:00 AM">11:00 AM</option>
                    <option value="12:00 AM">12:00 AM</option>
                    <option value="13:00 PM">13:00 PM</option>
                    <option value="14:00 PM">14:00 PM</option>
                    <option value="15:00 PM">15:00 PM</option>
                    <option value="16:00 PM">16:00 PM</option>
                    <option value="17:00 PM">17:00 PM</option>
                    <option value="18:00 PM">18:00 PM</option>
                    <option value="19:00 PM">19:00 PM</option>
                    <option value="20:00 PM">20:00 PM</option>
                    <option value="21:00 PM">21:00 PM</option>
                </select>
                <select id="doctor-endavailability" name = "availend">
                    <option value="" disabled selected>Enter your ending time</option>
                    <option value="9:00 AM">9:00 AM</option>
                    <option value="10:00 AM">10:00 AM</option>
                    <option value="11:00 AM">11:00 AM</option>
                    <option value="12:00 AM">12:00 AM</option>
                    <option value="13:00 PM">13:00 PM</option>
                    <option value="14:00 PM">14:00 PM</option>
                    <option value="15:00 PM">15:00 PM</option>
                    <option value="16:00 PM">16:00 PM</option>
                    <option value="17:00 PM">17:00 PM</option>
                    <option value="18:00 PM">18:00 PM</option>
                    <option value="19:00 PM">19:00 PM</option>
                    <option value="20:00 PM">20:00 PM</option>
                    <option value="21:00 PM">21:00 PM</option>
                </select></span>


            <label for="username">Hospital img</label>
            <input type="text" id="hosimg" name ="hosimg"required>
            <label for="username">Consultation fee</label>
            <input type="text" id="docfee" name = "consulfee"
                pattern="^(?=.{0,200}$)[0-9!@#$%^&*()_+-={}[\]|\\;:'>,.?/]+[0-9]+(?:\s[0-9\s!@#$%^&*()_+-={}[\]|\\;:'>,.?/]+[0-9]+){0,10}$"
                required>
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
String regyear = request.getParameter("regyear");
String degree = request.getParameter("degree");
String college = request.getParameter("college");
String comyr = request.getParameter("comyr");
String exyr = request.getParameter("exyr");
String aadharno = request.getParameter("aadharno");
String aadharimg = request.getParameter("aadharimg");
String docimg = request.getParameter("docimg");

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
    let regyear = "<%= regyear %>";
    let degree =  "<%= degree %>";
    let college =  "<%= college %>";
    let comyr =  "<%= comyr %>";
    let exyr =  "<%= exyr %>";
    let aadharno =  "<%= aadharno %>";
    let aadharimg =  "<%= aadharimg %>";
    let docimg =  "<%= docimg %>";

 /*    console.log(doctorname);
    console.log(email);
    console.log(specialization);
    console.log(gender);
    console.log(bio);
    console.log(mobnum);
    console.log(password);
    console.log(regnum);
    console.log(regcouncil);
    console.log(regyear);
    console.log(degree);
    console.log(college);
    console.log(comyr);
    console.log(exyr);
    console.log(aadharno);
    console.log(aadharimg);
    console.log(docimg);
     */
    
    document.getElementById("name").value = doctorname;
    document.getElementById("mail").value = email;
    document.getElementById("special_in").value = specialization;
    document.getElementById("gender").value = gender;
    document.getElementById("bio").value = bio;
    document.getElementById("mobnum").value = mobnum;
    document.getElementById("password").value = password;
    document.getElementById("num").value = regnum;
    document.getElementById("council").value = regcouncil;
    document.getElementById("year").value = regyear;
    document.getElementById("degree").value = degree;
    document.getElementById("college").value = college;
    document.getElementById("exyear").value = comyr;
    document.getElementById("exnum").value = exyr;
    document.getElementById("aadhar_no").value = aadharno;
    document.getElementById("aadhar_image").value = aadharimg;
    document.getElementById("image_url").value = docimg;
    
    
    
    
    
    
   /*      let form = document.getElementById("dochos")
        form.addEventListener("submit", function (event) {
            event.preventDefault();

            let hosname = document.getElementById("hosname").value;
            let hosadd = document.getElementById("hosadd").value;
            let doctortime = document.getElementById("doctor-availability").value;
            let doctorendtime = document.getElementById("doctor-endavailability").value;
            let hosimg = document.getElementById("hosimg").value;
            let docfee = document.getElementById("docfee").value;

            let dochos_data = {
                hosname: hosname,
                hosadd: hosadd,
                docslot: doctortime,
                doctorendtime: doctorendtime,
                hosimg: hosimg,
                docfee: docfee


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
            let check_obj = Object.assign(finddoc, dochos_data)
            console.log(check_obj)

            let index = docdetails.indexOf(finddoc)
            console.log(index);

            docdetails[index] = check_obj

            localStorage.setItem("doctor", JSON.stringify(docdetails))

            alert("Step 4 completed")
            window.location.href = "./docapprove.html?doctorid=" + finddoc["doctor_id"]



        }) */
    </script>
</body>

</html>