<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/css/docsign.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
  <div class="banner-text">
        <h2 class = "welcome">Welcome, Doctors!</h2>
        <p class="con">Join mgood today and connect with patients effortlessly.</p>
    
    </div>
<form class="form" method="post" action="<%= request.getContextPath() %>/docmedicalform.jsp">
  <h1>Sign up now</h1>
    <label for="doctorname">Name</label>
    <input type="text" name="doctorname" id="name" pattern="^(?=.{0,50}$)[A-Za-z]+(?:\s[A-Za-z]+){0,3}$" required>
    
    <label for="email">Email</label>
    <input type="text" name="email" id="mail" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" required>
    
    <label for="specialization">Specialization</label>
    <select name="specialization" id="special_in" required>
        <option value="" disabled selected>Select your specialization</option>
        <option value="Gynecologist">Gynecologist</option>
        <option value="Urologist">Urologist</option>
        <option value="Neurologist">Neurologist</option>
        <option value="Cardiology">Cardiology</option>
        <option value="Psychiatrist">Psychiatrist</option>
        <option value="General practitioner">General practitioner</option>
        <option value="Radiologist">Radiologist</option>
    </select>
    
    <label for="gender">Gender</label>
    <select name="gender" id="gender" required>
        <option value="" disabled selected>Select your gender</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        <option value="other">Other</option>
    </select>
    
    <label for="bio">Doctor Bio</label>
    <textarea rows="7" cols="50" name="bio" id="bio" required></textarea>
    
    <label for="mobnum">Mobile Number</label>
    <input type="text" name="mobnum" id="mobnum" pattern="[6-9]{1}[0-9]{9}" required>
    
    <label for="password">Password</label>
    <input type="password" name="password" id="password"
        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
        title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
        required>
    
    <label for="passwd">Confirm Password</label>
    <input type="password" name="confirm_password" id="passwd"
        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
        title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
        required>
    
    <button class="submit" type="submit">Continue</button>
</form>


    <script>
      /*   let form = document.querySelector(".form");

        form.addEventListener("submit", function (event) {
            event.preventDefault();
            let arry = [];
            let name = document.getElementById("name").value;
            let mail = document.getElementById("mail").value;
            let special = document.getElementById("special_in").value;
            let gender = document.getElementById("gender").value;
            let mobile = document.getElementById("mobnum").value;
            let password = document.getElementById("password").value;
            let rePassword = document.getElementById("passwd").value;
            let bio = document.getElementById("bio").value;
            let doctor_id = Date.now();
            console.log(mobile)

            if (password != rePassword) {
                alert("Confirm is diffrent from password");
                return false;
            }
            if (localStorage.getItem("doctor") === null) {
                let doctordata = {
                    name: name,
                    mail: mail,
                    special: special,
                    gender: gender,
                    rePassword: rePassword,
                    mob: mobile,
                    doctor_id: doctor_id,
                    degree: "",
                    college: "",
                    yearofcomplete: "",
                    Experience: "",
                    registrationno: "",
                    registrationcouncil: "",
                    registrationyr: "",
                    aadharproof: "",
                    aadhar_img: "",
                    doctor_img: "",
                    hosname: "",
                    hosadd: "",
                    docslot: "",
                    hosimg: "",
                    docfee: "",
                    bio: bio,
                    doctorendtime: "",
                    approve: ""



                };
                arry.push(doctordata)

                localStorage.setItem("doctor", JSON.stringify(arry));
                alert("Step 1 finished")

                window.location.href = "./docmedicalform.html?doctorid=" + doctor_id;

            }
            else {
                let checking = JSON.parse(localStorage.getItem("doctor"));

                for (let i = 0; i < checking.length; i++) {
                    if (mail == checking[i].mail) {
                        alert("this email-id is already exist!");
                        return
                    }
                }

                let doctordata = {
                    name: name,
                    mail: mail,
                    special: special,
                    gender: gender,
                    rePassword: rePassword,
                    doctor_id: doctor_id,
                    mob: mobile,
                    degree: "",
                    college: "",
                    yearofcomplete: "",
                    Experience: "",
                    registrationno: "",
                    registrationcouncil: "",
                    registrationyr: "",
                    aadharproof: "",
                    aadhar_img: "",
                    doctor_img: "",
                    hosname: "",
                    hosadd: "",
                    docslot: "",
                    hosimg: "",
                    docfee: "",
                    bio: bio,
                    doctorendtime: "",
                    approve: ""




                };
                arry.push(doctordata)
                let backup_data = JSON.parse(localStorage.getItem("doctor"));
                backup_data.push(doctordata);
                localStorage.setItem("doctor", JSON.stringify(backup_data));

                alert("Step 1 finished")





                window.location.href = "./docmedicalform.html?doctorid=" + doctor_id;


            }






        });

 */
    </script>
</body>

</html>