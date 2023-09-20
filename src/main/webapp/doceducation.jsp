<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../assets/css/doceducation.css">
</head>

<body>
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
        <select id="exyear" name = "comyr" required>
            <option value="" disabled selected>Type year of completion</option>
        </select>
        <label for="username">Year of experience</label>
        <input type="text" id="exnum" name = "exyr" maxlength="2" required>


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
String regyear = request.getParameter("regyear");

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
    
    
    
        let currentYear = new Date().getFullYear();
        let yeardropdown = document.getElementById("exyear");
        for (let i = currentYear; i >= 1923; i--) {
            let option = document.createElement("option");
            option.value = i;
            option.text = i;
            yeardropdown.appendChild(option);
        }

/*         let form = document.getElementById("docedu")
        form.addEventListener("submit", function (event) {
            event.preventDefault();

            let degree = document.getElementById("degree").value;
            let college = document.getElementById("college").value;
            let exyear = document.getElementById("exyear").value;
            let exnum = document.getElementById("exnum").value;
            let aadhar_no = document.getElementById("aadhar_no").value;
            let aadhar_img = document.getElementById("aadhar_image").value;
            let images = document.getElementById("image_url").value;
            let docedu_data = {
                degree: degree,
                college: college,
                yearofcomplete: exyear,
                Experience: exnum,
                aadharproof: aadhar_no,
                aadhar_img: aadhar_img,
                doctor_img: images

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
            let check_obj = Object.assign(finddoc, docedu_data)
            console.log(check_obj)

            let index = docdetails.indexOf(finddoc)
            console.log(index);

            docdetails[index] = check_obj

            localStorage.setItem("doctor", JSON.stringify(docdetails))

            alert("Step 3 completed")
            window.location.href = "./dochos.html?doctorid=" + finddoc["doctor_id"]



        })  */
    </script>
</body>

</html>